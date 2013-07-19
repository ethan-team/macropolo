# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :offer do
    name_cn "MyString"
    name_en "MyString"
    offer_owner nil
    offer_region nil
    offer_status nil
    offer_type nil
    description_cn "MyText"
    description_en "MyText"
    address_cn "MyString"
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
    nearby_cn "MyText"
    nearby_en "MyText"
    amenities_cn "MyText"
    amenities_en "MyText"
    rules_cn "MyText"
    rules_en "MyText"
  end
end
