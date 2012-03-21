require 'spec_helper'

describe Badgehistory do
  it "counts the number of downloads of a given badge" do
    history  = Factory.create(:badgehistory)
    history2 = Factory.create(:badgehistory)
    
    #Badgehistory.find_all_by_badge_id(1).count.should eq(2)
  end
end
