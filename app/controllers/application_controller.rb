class ApplicationController < ActionController::Base
  before_filter :store_location
  protect_from_forgery
  
  def get_display_avatar
    if user_signed_in?
      @display_avatar = current_user.avatar_url
    else
      @dispay_avatar = "default-pro.png"
    end
  end

  def store_location
    session[:user_return_to] = request.env['PATH_INFO']
  end
end
