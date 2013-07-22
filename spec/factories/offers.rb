# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :offer do
    name "MyString"
    name_en "MyString"
    offer_owner nil
    offer_region nil
    offer_status nil
    offer_type nil
    description "MyText"
    address "MyString"
    address_en "MyString"
    longitude 1.5
    latitude 1.5
    bedroom_count 1
    bathroom_count 1
    total_room_count 1
    total_bed_count 1
    size_in_m2 1
    max_guest_count 1
    min_nights 1
    max_nights 1
    contact_info "MyString"
    contact_phone "MyString"
    contact_mobile "MyString"
    contact_email "MyString"
    checkin_after "9.99"
    checkout_before "9.99"
    nearby "MyText"
    amenities "MyText"
    rules "MyText"
  end
end
