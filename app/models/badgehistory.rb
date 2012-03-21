class Badgehistory < ActiveRecord::Base
  belongs_to :user
  belongs_to :badge
  
  def self.download_count(badge_id)
    find_all_by_badge_id(badge_id).count
  end
  
  def self.total_followers(badge_id)
    badge_history_by_badge = find_all_by_badge_id(badge_id)
    badge_history_by_badge.uniq! {|badge| badge.user_id}
    array_of_followers = badge_history_by_badge.map { |f| f.user_followers_snapshot }
    array_of_followers.inject { |f, sum| sum + f }
  end
end
