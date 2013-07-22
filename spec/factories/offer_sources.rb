# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :offer_source do
    offer_code 1
    source_id 1
    source_uri "MyString"
    original_introduction "MyText"
    offer_source_type nil
    offer_source_currency_type nil
    offer nil
    remark "MyText"
  end
end
