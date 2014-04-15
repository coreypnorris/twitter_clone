require "spec_helper"

describe UserMailer do
  before do
    # @user = User.new({ username: })
  end

  it "sends an welcome email whenever a user is created" do
    @user.welcome_message

  end
end
