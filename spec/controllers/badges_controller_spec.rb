require 'spec_helper'

describe BadgesController do
  
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
      unpopular_badge = Factory(:badge, :times_used => 0)
      popular_badge   = Factory(:badge, :times_used => 4)
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
