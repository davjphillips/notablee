class Badge < ActiveRecord::Base
  validates :title, :presence => true, 
                    :uniqueness => true
  validates :image_url, :presence => true
  validates :description, :presence => true
  validates :user_id, :presence => true
  
  has_many :users
  belongs_to :owner, :class_name => :user
  
  def user_count
    users.count
  end
end
