# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :booking_history do
    booking ""
    booking_status nil
    remark "MyString"
  end
end
