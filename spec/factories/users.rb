# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  sequence :username do |n|
    Faker::Internet.user_name
  end

  sequence :email do |n|
    Faker::Internet.safe_email
  end

  factory :user do
    username
    email
  end
end
