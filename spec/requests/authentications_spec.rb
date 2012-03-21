require 'spec_helper'

describe "Authentications" do
  context "without signing into app" do
    before do 
      visit root_path
      request.env["devise.mapping"] = Devise.mappings[:user] 
      request.env["omniauth.auth"] = OmniAuth.config.mock_auth[:twitter]
    end
    xit "twitter sign in button should lead to twitter authentication page" do
      click_link "Sign in with Twitter"
      Authentication.last.uid.should == '123545'
    end
  end
end



describe "Selecting a new badge for my avatar" do
  it "allows you to browse badges without signing in" do
    visit root_path
    page.should have_content("change the world")
    click_link "badges"
    page.should have_content("Description")
    click_link "notablee"
    page.should have_content("Sign in with Twitter")
  end
  
  it "allows you to select a new badge if already signed in" do
    user = Factory(:user)
    sign_in(user)
    click_link "badges"
  end
end