class Badge < ActiveRecord::Base
  validates :title, :presence => true, 
                    :uniqueness => true
  validates :image_url, :presence => true
  validates :description, :presence => true
  
  has_many :users
  
  def user_count
    users.count
  end
end
