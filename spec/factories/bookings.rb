# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :booking do
    user nil
    offer nil
    booking_status nil
    guest_name "MyString"
    guest_contact_info "MyString"
    guest_extra_info "MyString"
    total_payment_in_rmb 0
  end
end
