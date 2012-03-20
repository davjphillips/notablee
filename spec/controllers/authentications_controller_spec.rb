require 'spec_helper'

describe AuthenticationsController do

  describe '#create' do
    context 'when authentication is found' do
      before :each do
        request.env["omniauth.auth"] = OmniAuth.config.mock_auth[:twitter]
        @user = User.create!(:email => 'b@b.com', :password => 'blahblah')
        @auth = Authentication.create!(:provider => 'twitter', :uid => '123545', :user => @user)
      end
      it 'flashes a success message' do
        post :create
        flash[:notice].should == "Authentication Successful with Twitter"
      end  
    end
    
    context 'when authentication is not found' do
      context 'when current_user exists' do
        
      end
      
      context 'when current_user does not exist' do
        before :each do
          request.env["omniauth.auth"] = OmniAuth.config.mock_auth[:twitter]
          @auth = Authentication.create!(:provider => 'twitter', :uid => '123545')
        end
        
        it "creates a new user" do
          expect {post :create}.to change(User, :count).by(1)
        end
      end
    end
  end
end
