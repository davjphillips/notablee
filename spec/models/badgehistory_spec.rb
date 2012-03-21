require 'spec_helper'

describe Badgehistory do
  before (:each) do
    @badge    = Factory.create(:badge)
    history  = Factory.create(:badgehistory)
    history2 = Factory.create(:badgehistory)
    history3 = Factory.create(:badgehistory)
  end
  
    it "counts the number of downloads of a given badge" do
      Badgehistory.download_count(@badge.id).should eq(3)
    end

    it "aggregates the number of followers for a badge" do
      Badgehistory.total_followers(@badge.id).should eq(15)
  end
end
