class AuthenticationsController < ApplicationController
  skip_before_filter :store_location
  
  def index
    @authentications = current_user.authentications if current_user
  end
  
  def create
    omniauth = request.env["omniauth.auth"]
    authentication = Authentication.find_by_provider_and_uid(omniauth['provider'], omniauth['uid'])
    if authentication
      authentication.user.update_profile(omniauth)
      flash[:notice] = "Authentication Successful with Twitter"
      sign_in_and_redirect(:user, authentication.user)
    elsif current_user
      current_user.associate_authentication(omniauth)
      flash[:notice] = "Authentication Successful"
      redirect_to root_path
    else
      user = User.new_user_with_auth(omniauth)
      if user.save
        flash[:notice] = "Signed up successfully. Welcome to notablee :)"
        #user.store_user_image_locally
        sign_in_and_redirect(:user, user)
      else
        session[:omniauth] = omniauth.except('extra')
        redirect_to new_user_registration_path
      end

    end
  end

  def destroy
    @authentication = current_user.authentications.find(params[:id])
    @authentication.destroy
    flash[:notice] = "Successfully destroyed authentication"
    redirect_to root_path
  end
end
