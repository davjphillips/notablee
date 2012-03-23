class BadgehistoriesController < ApplicationController
  before_filter :require_sign_in, :only => :create
  
  def create
    Badgehistory.create!(:user_id => current_user.id, 
                        :badge_id => params[:badge_id], 
                        :user_followers_snapshot => Twitter.user(current_user.username).followers_count
                        )
    current_user.create_notablee_url(params[:badge_id])
    @display_avatar = get_display_avatar
    redirect_to badge_path(params[:badge_id])
  end
  
  private
  def require_sign_in
    if !current_user
      session[:user_return_to] = request.env['PATH_INFO']
      redirect_to auth_twitter_path
    end
  end
end
