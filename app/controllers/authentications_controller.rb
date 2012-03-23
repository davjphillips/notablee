class AuthenticationsController < ApplicationController

  def index
    @authentications = current_user.authentications if current_user
  end
  
  def create
    # render :text => request.env["omniauth.auth"].to_yaml
    omniauth = request.env["omniauth.auth"]
    authentication = Authentication.find_by_provider_and_uid(omniauth['provider'], omniauth['uid'])
    
    if authentication
      authentication.user.update_profile(omniauth)
      flash[:notice] = "Authentication Successful with Twitter"
   
      sign_in(:user, authentication.user)
      redirect_to badges_path
    elsif current_user 
      current_user.associate_authentication(omniauth)
      flash[:notice] = "Authentication Successful"
      redirect_to root_path
    else
      user = User.new_user_with_auth(omniauth)
      if user.save
        flash[:notice] = "Signed in successfully."
        sign_in(:user, authentication.user)
        redirect_to badges_path
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
