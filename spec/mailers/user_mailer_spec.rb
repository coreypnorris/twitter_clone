require "spec_helper"

describe UserMailer do
  # before do
  #   @user = FactoryGirl.build(:user)
  # end

  it "sends an welcome email whenever a user is created" do
    @user = FactoryGirl.build(:user)
    expect(UserMailer).to receive(:welcome_message).with(@user)
    @user.save
  end

  it "sends an email" do
    @user = FactoryGirl.build(:user)
    @user.send_welcome_message
    ActionMailer::Base.deliveries.last.to.should == [@user.email]
  end
end
