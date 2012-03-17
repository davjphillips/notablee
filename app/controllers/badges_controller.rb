class BadgesController < ApplicationController
  
  def index
    @badges = Badge.all.sort_by!{ |badge| badge.users.count }.reverse
    @display_avatar = get_display_avatar
  end

  def show
  end
  
end
