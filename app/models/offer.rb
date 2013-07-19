class Offer < ActiveRecord::Base
  belongs_to :offer_owner
  belongs_to :offer_region
  belongs_to :offer_status
  belongs_to :offer_type
  attr_accessible :address_cn, :address_en, :amenities_cn, :amenities_en, :bathroom_count, :bedroom_count, :checkin_after, :checkout_before, :contact_email, :contact_info, :contact_mobile, :contact_phone, :description_cn, :description_en, :latitude, :longitude, :max_guest_count, :max_nights, :min_nights, :name_cn, :name_en, :nearby_cn, :nearby_en, :rules_cn, :rules_en, :size_in_m2, :total_bed_count, :total_room_count

  attr_accessible :offer_owner_id, :offer_region_id, :offer_status_id, :offer_type_id

end
