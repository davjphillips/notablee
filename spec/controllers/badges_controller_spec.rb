require 'spec_helper'

describe BadgesController do
  
  describe "#create" do
    it ""
  end
  
  describe "#index" do
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
  
  describe "#show" do
    it "displays an individual badge" do
      new_badge = Factory(:badge)
      get :show
      response.should render_template "badges/show"
    end
  end
end
