require 'spec_helper'

describe User do
  it { should validate_presence_of :email }
  it { should validate_presence_of :fb_username }
  it "should validate email format" do
    user = User.new(email:'name', fb_username:'nameuser')
    user.save
    expect(user).not_to be_persisted
  end
  it "should make a new user that does not persist" do
    user = User.new
    expect(user).not_to be_persisted
  end
  it "should make a new user that persists when saved" do
    user = User.new(email:'name@example.com', fb_username:'nameuser')
    user.save
    expect(user).to be_persisted
  end


end