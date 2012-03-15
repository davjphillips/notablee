class BadgesController < ApplicationController
  
  def index
    @badges = Badge.all.sort_by!{ |badge| badge.times_used }.reverse
  end
end
