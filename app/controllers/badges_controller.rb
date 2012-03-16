class BadgesController < ApplicationController
  
  def index
    @badges = Badge.all.sort_by!{ |badge| badge.users.count }.reverse
  end

  def show

  end
end
