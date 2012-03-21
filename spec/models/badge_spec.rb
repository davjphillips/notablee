require 'spec_helper'

describe Badge do
  
  it 'requires a title' do
    should_not be_valid
    subject.errors[:title].should_not be_empty
  end
  
  it 'requires an image url (for the badge)' do
    should_not be_valid
    subject.errors[:image_url].should_not be_empty
  end
  
  it 'requires a description' do
    should_not be_valid
    subject.errors[:description].should_not be_empty
  end
  
  it 'requires a unique title' do
    valid_badge = Factory.create(:badge, :title => "foo")
    invalid_badge = Factory.build(:badge, :title => "foo")
    
    invalid_badge.should_not be_valid
    invalid_badge.should have(1).error_on(:title)

  end
  
  it 'has an administrator (created by)' do
    should_not be_valid
    subject.errors[:owner_id].should_not be_empty
  end
  
  context "with users" do
    it 'has a number of users' do
      b = Badge.create :title => "KONY2012", :image_url => "http://example.com", :description => "This is a badge description."
      b.users.count.should be_zero
      b.user_count.should == 0
    end
    
    it "can increase in number of users"
    it "aggregates the sum of all badge users' followers"
  
  end
  
  context "user changing badges" do
    it "badge user count drops when user changes badges" do
      b1 = FactoryGirl.create(:badge)
      b2 = FactoryGirl.create(:badge)
      u1 = FactoryGirl.create(:user)
      b2.users << u1
      
      expect {
        b1.users << u1
      }.to change(b2,:user_count).by(-1)      
    end
    
  end
end
