require 'spec_helper'

describe BadgesController do
  include Devise::TestHelpers
  
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
  
  describe "#show" do
    it "renders the show page related to the correct badge" do
      new_badge = Factory(:badge)
      user1 = Factory(:user, :avatar_url => "andrew.png", :badge_id => new_badge.id, :notablee_url => " ")
      get :show
      response.should render_template 'badges/show'
    end
    
    it "assigns a new badge to an avatar" do
      new_badge = Factory(:badge)
      user1     = Factory(:user)
      sign_in(user1)
      get :show, :id => new_badge.id
      user1.reload.badge_id.should == new_badge.id
    end
  end
end
  

# 
# @notablee_url = @avatar_url + @image_url + Chunky stuff 
# @avatar_url   = Chunky
# @image_url    = Chunky
# compose!
# @notablee_url.save


