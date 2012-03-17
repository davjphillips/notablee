class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def get_display_avatar
    if user_signed_in?
      @display_avatar = current_user.avatar_url
    else
      @dispay_avatar = "default-pro.png"
    end
  end

  
end
