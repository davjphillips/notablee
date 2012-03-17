class StaticPagesController < ApplicationController
  
  def home
    @display_avatar = get_display_avatar
  end
  
end
