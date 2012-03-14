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
    Badge.create! :title => "KONY2012", :image_url => "http://example.com", :description => "This is a badge description."
    b = Badge.new :title => "KONY2012", :image_url => "http://example.com", :description => "This is a badge description."
    b.should_not be_valid
    b.errors[:title].should_not be_empty
  end
  
  context "with users" do
    it 'keeps track of how many times a badge is used' do
      b = Badge.create :title => "KONY2012", :image_url => "http://example.com", :description => "This is a badge description."
      b.users.count.should be_zero
      b.user_count.should == 0
    end
  
    it "aggregates the sum of all badge users' followers"
    it 'has an administrator (created by)'
  
  end
end
