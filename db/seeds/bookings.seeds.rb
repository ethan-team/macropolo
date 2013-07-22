#encoding: utf-8

# OfferType
puts "BookingType"

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
seed_booking_status code:11,  name:"waiting for payment",  name_en: "waiting for payment"
seed_booking_status code:20,	name:"booked",				name_en: "booked" 
seed_booking_status code:21,	name:"booking failure",		name_en: "booking failure"
seed_booking_status code:30,	name:"closed",				name_en: "closed"



puts "BookingType seeded"