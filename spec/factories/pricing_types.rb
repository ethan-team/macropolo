# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :pricing_type do
    code 1
    name_string "MyString"
    name_en "MyString"
  end
end
