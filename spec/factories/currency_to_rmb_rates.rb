# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :currency_to_rmb_rate do
    offer_source_currency_type nil
    rate "9.99"
    reviewed false
  end
end
