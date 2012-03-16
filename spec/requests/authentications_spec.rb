require 'spec_helper'

describe "Authentications" do
  context "without signing into app" do

    it "twitter sign in button should lead to twitter authentication page" do
      visit root_path
      click_link "Sign in with Twitter"
      page.
      Authentication.last.uid.should == '123545'
    end
  end
  
end
