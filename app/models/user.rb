class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         

  # Setup accessible (or protected) attributes for your model
  attr_accessible :username, :email, :password, :password_confirmation, :remember_me, :login, :avatar_url
  
  # Virtual attribute for authenticating by either username or email
  # This is in addition to a real persisted field like 'username'
  attr_accessor :login
  
  belongs_to :badge
  has_many :owned_badges, :foreign_key => :owner_id
  has_many :authentications
  
  def apply_omniauth(omniauth)
    authentications.build(:provider => omniauth['provider'], 
                          :uid => omniauth['uid'], 
                          :oauth_token => omniauth['credentials']['token'], 
                          :oauth_secret => omniauth['credentials']['secret']
                          )
  end
  
  def password_required?
    (authentications.empty? || !password.blank?) && super
  end
  
  def self.find_for_database_authentication(warden_conditions)
     conditions = warden_conditions.dup
     login = conditions.delete(:login)
     where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.strip.downcase }]).first
  end
  
  def self.get_user_image(username)
    Twitter.profile_image(username, :size => 'reasonably_small')
  end
  
  def self.update_profile_image(image)
    #Twitter.update(image)
    #Twitter.update_profile_image(image)
  end
  

  def self.create_notablee(avatar_url, badge_url)

  end
  
  def update_profile_image(img, token, secret)
     setup_twitter(token, secret)
     Twitter.update_profile_image(img)
  end
  
  protected

   # Attempt to find a user by it's email. If a record is found, send new
   # password instructions to it. If not user is found, returns a new user
   # with an email not found error.
   def self.send_reset_password_instructions(attributes={})
     recoverable = find_recoverable_or_initialize_with_errors(reset_password_keys, attributes, :not_found)
     recoverable.send_reset_password_instructions if recoverable.persisted?
     recoverable
   end 

   def self.find_recoverable_or_initialize_with_errors(required_attributes, attributes, error=:invalid)
     (case_insensitive_keys || []).each { |k| attributes[k].try(:downcase!) }

     attributes = attributes.slice(*required_attributes)
     attributes.delete_if { |key, value| value.blank? }

     if attributes.size == required_attributes.size
       if attributes.has_key?(:login)
          login = attributes[:login]
          record = find_record(login)
       else  
         record = where(attributes).first
       end  
     end  

     unless record
       record = new

       required_attributes.each do |key|
         value = attributes[key]
         record.send("#{key}=", value)
         record.errors.add(key, value.present? ? error : :blank)
       end  
     end  
     record
   end

   def self.find_record(login)
     where(["username = :value OR email = :value", { :value => login }]).first
   end

   def setup_twitter(token, secret)
          Twitter.configure do |config|
             config.consumer_key = 'ccTPXN2szUdt88PDTAmNXQ'  # needs to come from config
             config.consumer_secret = 'STJIVcvCE6MgUeQjck13gCEKOvxT1WaTdGURdVllIM' # Also from config
             config.oauth_token = token #'523792847-OI558v8yWQnK7EyXjyvL3reWwc5NYlx9zSWIp7nM' << notablee credentials
             config.oauth_token_secret = secret #'sOoWNMUZhZYMQMBhRaXHBVZ37zk8WeJ2qIPTJmRy4k' << notablee credentials
           end  
   end
  
end
