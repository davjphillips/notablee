class BadgesController < ApplicationController
  
  def index
    @badges = Badge.all.sort_by!{ |badge| badge.users.count }.reverse
    @display_avatar = get_display_avatar
  end

  def show
    if current_user
      @user = current_user
      @user.badge_id = params[:id]
      @user.save
      @display_avatar = current_user.avatar_url
      @badge = current_user.badge
    end
  end

  def update
    current_user.create_notablee_url
    @display_avatar = get_display_avatar
    Badgehistory.create(:user_id => current_user.id, :badge_id => params[:id])
  end
end
