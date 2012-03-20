require 'spec_helper'

describe "Authentications" do
  context "without signing into app" do
    before do 
      request.env["devise.mapping"] = Devise.mappings[:user] 
      request.env["omniauth.auth"] = OmniAuth.config.mock_auth[:twitter]
    end
    it "twitter sign in button should lead to twitter authentication page" do
      visit root_path
      click_link "Sign in with Twitter"
      page.
      Authentication.last.uid.should == '123545'
    end
  end
  
end
