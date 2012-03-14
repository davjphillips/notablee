require 'spec_helper'

describe User do
  it "users should be able to create an account" do
    expect {
      User.create
    }.to change(User.count).by(1)
  end
  
  it "users should be able to sign in"
  it "users should be able to sign out"
end
