class BadgehistoriesController < ApplicationController
  before_filter :ensure_sign_in, :only => :create
  
  def create
    Badgehistory.create!(:user_id => current_user.id, 
                        :badge_id => params[:id], 
                        :user_followers_snapshot => Twitter.user(current_user.username).followers_count
                        )
    current_user.create_notablee_url
    @display_avatar = get_display_avatar
    redirect_to badges_path
  end
  
  private
  def ensure_sign_in
    if !current_user
      redirect_to auth_twitter_path
    end
  end
end
