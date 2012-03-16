class BadgesController < ApplicationController
  
  def index
    @badges = Badge.all.sort_by!{ |badge| badge.users.count }.reverse
    @display_avatar = get_display_avatar
  end
  
  def get_display_avatar
    if user_signed_in?
      @display_avatar = current_user.avatar_url
    else
      @dispay_avatar = "default-pro.png"
    end
  end

  def show

  end
end
