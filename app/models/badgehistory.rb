class Badgehistory < ActiveRecord::Base
  
  def download_count(badge_id)
    Badgehistory.find_all_by_badge_id(param).count
  end
end
