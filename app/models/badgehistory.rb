class Badgehistory < ActiveRecord::Base
  belongs_to :user
  belongs_to :badge
  
  def self.download_count(badge_id)
    find_all_by_badge_id(badge_id).count
  end
  
  def self.total_followers(badge_id)
    array_of_followers = find_all_by_badge_id(badge_id).map { |f| f.user_followers_snapshot }
    array_of_followers.inject { |f, sum| sum + f }
  end
end
