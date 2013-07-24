# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :offer_image do
    offer nil
    uri "MyString"
    preview_uri "MyString"
    width 1
    height 1
    is_primary false
    label "MyString"
    seq 1
  end
end
