class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable, registerable, and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable
         

  # Setup accessible (or protected) attributes for your model
  attr_accessible :username, :email, :password, :password_confirmation, :remember_me, :login, :avatar_url
  
  # Virtual attribute for authenticating by either username or email
  # This is in addition to a real persisted field like 'username'
  attr_accessor :login
  
  belongs_to :badge
  has_many :badgehistories
  has_many :owned_badges, :foreign_key => :owner_id
  has_many :authentications
  
  delegate :image_url, :to => :badge, :prefix => true
  
  def self.new_user_with_auth(omniauth)
    user = User.new
    username = omniauth['info']['nickname']
    user_image_url = User.get_user_image_url(username)
    
    user.email = "#{username}@notablee.com"
    user.username = username
    user.avatar_url = user_image_url
    user.apply_omniauth(omniauth)
    user
  end
  
  def update_profile(omniauth)
    username = omniauth['info']['nickname']
    user_image = User.get_user_image_url(username)
    self.avatar_url = user_image
    self.save
  end
  
  def apply_omniauth(omniauth)
    authentications.build(:provider => omniauth['provider'], 
                          :uid => omniauth['uid'], 
                          :oauth_token => omniauth['credentials']['token'], 
                          :oauth_secret => omniauth['credentials']['secret']
                          )
  end
  
  def self.get_user_image_url(username)
    Twitter.profile_image(username, :size => 'reasonably_small')
  end
  
  def password_required?
    (authentications.empty? || !password.blank?) && super
  end
  
  def self.find_for_database_authentication(warden_conditions)
     conditions = warden_conditions.dup
     login = conditions.delete(:login)
     where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.strip.downcase }]).first
  end
  
  def update_profile_image(img, token, secret)
    img.pos = 0
    setup_twitter(token, secret)
    Twitter.update_profile_image(img)
    File.delete("#{self.username}.png")
  end


  def create_notablee_url
    if Twitter.profile_image(self.username) == Badge.find(self.badge_id).image_url
      flash[:alert] = "You already have that badge foo!"
    else
      original_avatar = MiniMagick::Image.open(self.avatar_url)
      notablee_avatar = original_avatar.composite(MiniMagick::Image.open("app/assets/images/" + Badge.find_by_id(self.badge_id).image_url))
      notablee_avatar.write "#{self.username}.png"
      @notablee_url = File.open("#{self.username}.png")
    
      token = self.authentications.first.oauth_token
      secret = self.authentications.first.oauth_secret
  
      update_profile_image(@notablee_url, token, secret)
      @badge_name = Badge.find(self.badge_id).title
      begin 
        Twitter.follow("notableeme")
        Twitter.update("I just added the #{@badge_name} #notablee badge. Get yours at notablee.me/badges/#{self.badge_id}")
      rescue Twitter::Error::Forbidden
        #do nothing
      end
    #end
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
       config.oauth_token = token
       config.oauth_token_secret = secret
     end
   end
end
