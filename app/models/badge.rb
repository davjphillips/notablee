class Badge < ActiveRecord::Base
  validates :title, :presence => true, 
                    :uniqueness => true
  validates :image_url, :presence => true
  validates :description, :presence => true
  validates :owner_id, :presence => true
  
  has_many :users, :through => :badgehistories
  has_many :badgehistories
  belongs_to :owner, :class_name => :user
  
  def user_count
    users.count
  end
end
