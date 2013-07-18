# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :offer_region do
    code 1
    name_cn "MyString"
    name_en "MyString"
    parent_id 1
    latitude 1.5
    longitude 1.5
  end
end
