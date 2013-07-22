class Offer < ActiveRecord::Base
  belongs_to :offer_owner
  belongs_to :offer_region
  belongs_to :offer_status
  belongs_to :offer_type
  attr_accessible :code, :name, :name_en
  attr_accessible :address, :address_en 
  attr_accessible :description, :nearby, :amenities, :rules, :remark
  attr_accessible :max_guest_count, :max_nights, :min_nights, :size_in_m2, :total_bed_count, :total_room_count, :bathroom_count, :bedroom_count, :checkin_after, :checkout_before 
  attr_accessible :contact_email, :contact_info, :contact_mobile, :contact_phone 
  attr_accessible :latitude, :longitude

  attr_accessible :offer_owner_id, :offer_region_id, :offer_status_id, :offer_type_id

end
