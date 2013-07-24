# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :voucher do
    booking nil
    user nil
    name "MyString"
    amount_in_rmb 1
    amount_used_in_rmb 1
    expired_date "2013-07-24"
  end
end
