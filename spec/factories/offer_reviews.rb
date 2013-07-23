# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :offer_review do
    offer nil
    user nil
    booking nil
    body "MyText"
    rating 1
  end
end
