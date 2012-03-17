require 'spec_helper'

describe BadgesController do
  include Devise::TestHelpers
  
  describe "#create" do
    it ""
  end
  
  describe "#index" do
    context "badges display" do
        it "displays index of badges" do
        new_badge = Factory(:badge)
        get :index
        assigns(:badges).should include(new_badge)
      end
    
      it "renders the index page" do
        get :index
        response.should render_template "badges/index"
      end
    
      it "sorts the badges by popularity" do
        unpopular_badge = Factory(:badge)
        popular_badge   = Factory(:badge)
        user1           = Factory(:user, :badge_id => 2)
        user2           = Factory(:user, :badge_id => 2)
        user3           = Factory(:user, :badge_id => 2)
        user4           = Factory(:user, :badge_id => 1)

        get :index
        assigns(:badges).should == [popular_badge, unpopular_badge]
      end
    end
    
    context "avatar display" do
      it "displays default avatar images" do
        get :index
        assigns(:display_avatar).should eq("default-pro.png")
      end
      
      it "displays current user's avatar" do
        user1 = Factory(:user, :avatar_url => "david.png")
        sign_in(user1)
        get :index
        assigns(:display_avatar).should eq(user1.avatar_url)
      end    
    end
  
  describe "#generate_notablee" do
    it "creates a new notablee in the database" do
      user3 = Factory(:user, :avatar_url => "andrew.png", :badge_id => 1, :notablee_url => " ")
      badge3 = Factory(:badge)
      get :show
      assigns(:notablee).should eq(user3.notablee_url)
      #user3.generate_notablee(badge3.image_url).should eq(user3.notablee_url)  
    end
  end
end
  
  describe "#show" do
    it "displays an individual badge" do
      new_badge = Factory(:badge)
      get :show
      response.should render_template "badges/show"
    end
  end
end

# 
# @notablee_url = @avatar_url + @image_url + Chunky stuff 
# @avatar_url   = Chunky
# @image_url    = Chunky
# compose!
# @notablee_url.save


