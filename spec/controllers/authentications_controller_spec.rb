require 'spec_helper'

describe AuthenticationsController do
  before(:each) do
    request.env["omniauth.auth"] = OmniAuth.config.mock_auth[:twitter]
    @user = User.new(:email => 'b@ba.com', :password => 'blahblah')
  end
  
  describe '#create' do
    context 'when authentication is found' do
      it 'flashes a success message' do
        @user.save!
        @auth = Authentication.create!(:provider => 'twitter', :uid => '123545', :user => @user)
        post :create
        flash[:notice].should == "Authentication Successful with Twitter"
      end  
    end
    
    context 'when authentication is not found' do      
      context 'when current_user does not exist' do
        it "creates a new user" do
          User.stub(:new_user_with_auth).and_return(@user)
          expect {
            post :create
          }.to change(User, :count).by(1)
        end
      end
    end
  end
end
