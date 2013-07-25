#encoding: utf-8

# OfferType
puts "BookingStatus"

def seed_booking_status arg
  arg[:code] = 0 unless arg[:code]
  bt = BookingStatus.find_by_code arg[:code]
  bt = BookingStatus.create! arg unless bt
  puts "  OfferType: #{bt.code} #{bt.name} #{bt.name_en}"
  bt
end

seed_booking_status code:0,   name:"new",    				name_en: "new"
seed_booking_status code:1,   name:"cancelled",     		name_en: "cancelled"
seed_booking_status code:10,  name:"validating",     		name_en: "validating"
seed_booking_status code:20,  name:"validated",				name_en: "validated"
seed_booking_status code:21,  name:"invalid",				name_en: "invalid"
seed_booking_status code:30,  name:"validated: waiting for payment",   name_en: "validated: waiting for payment"
seed_booking_status code:31,  name:"validated: payment confirmed",     name_en: "validated: payment confirmed"
seed_booking_status code:40,  name:"booking",				name_en: "booking" 
seed_booking_status code:41,  name:"booked",				name_en: "booked" 
seed_booking_status code:42,  name:"booking failure",		name_en: "booking failure"
seed_booking_status code:50,  name:"closed",				name_en: "closed"
seed_booking_status code:51,  name:"expired:validating",	name_en: "expired:validating"
seed_booking_status code:52,  name:"expired:payment",		name_en: "expired:paymenting"
seed_booking_status code:53,  name:"expired:booking",		name_en: "expired:booking"



puts "BookingStatus seeded"