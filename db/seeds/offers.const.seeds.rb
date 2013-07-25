#encoding: utf-8

# OfferType
puts "OfferType"

def seed_offer_type arg
  arg[:code] = 0 unless arg[:code]
  ot = OfferType.find_by_code arg[:code]
  ot = OfferType.create! arg unless ot
  puts "  OfferType: #{ot.code} #{ot.name} #{ot.name_en}"
  ot
end

seed_offer_type code:1,   name:"度假屋",      name_en:"Villa"
seed_offer_type code:2,   name:"度假别墅",    name_en:"Resort"
seed_offer_type code:3,   name:"普通民宅",    name_en:"Homes"
seed_offer_type code:4,   name:"别墅",       name_en:"House"
seed_offer_type code:5,   name:"家庭旅馆",    name_en:"Family Inn"
seed_offer_type code:6,   name:"主题旅馆",    name_en:"Theme Hotel"
seed_offer_type code:7,   name:"酒店式公寓",  name_en:"Service Apartment"
seed_offer_type code:8,   name:"船屋",        name_en:"Houseboat"
seed_offer_type code:10,  name:"经济酒店",    name_en:"Economy Hotel"
seed_offer_type code:11,  name:"宾馆",       name_en:"Hotel"
seed_offer_type code:12,  name:"客栈",       name_en:"Inn"
seed_offer_type code:13,  name:"青年旅社",    name_en:"Hostel"
seed_offer_type code:20,  name:"村屋",        name_en:"Village House"
seed_offer_type code:21,  name:"四合院",      name_en:"Quardrangle"
seed_offer_type code:22,  name:"营地",        name_en:"Campsite"
seed_offer_type code:30,  name:"其他",        name_en:"Others"

puts "OfferType seeded"


# OfferStatus
puts "OfferStatus"

def seed_offer_status arg
  arg[:code] = 0 unless arg[:code]
  os = OfferStatus.find_by_code arg[:code]
  os = OfferStatus.create! arg unless os
  puts "  OfferRegion: #{os.code} #{os.name} #{os.name_en}"
  os
end

seed_offer_status  code:0,    name:"导入中",           name_en:"initiating and loading"
seed_offer_status  code:1,    name:"导入对阅中",       name_en:"reviewing content"
seed_offer_status  code:2,    name:"申请上架",         name_en:"request to go online"
seed_offer_status  code:10,   name:"下架",             name_en:"off stock"
seed_offer_status  code:11,   name:"暂停",             name_en:"on hold"
seed_offer_status  code:100,  name:"上架",             name_en:"on stock"

puts "OfferStatus seeded"



# OfferStatus
puts "OfferSourceType"

def seed_offer_source_type arg
  arg[:code] = 0 unless arg[:code]
  ost = OfferSourceType.find_by_code arg[:code]
  ost = OfferSourceType.create! arg unless ost
  puts "  OfferRegion: #{ost.code} #{ost.name} "
  ost
end

seed_offer_source_type  code:0,    name:"self"
seed_offer_source_type  code:1,    name:"airbnb"
seed_offer_source_type  code:2,    name:"wimdu"
seed_offer_source_type  code:3,    name:"THH"
seed_offer_source_type  code:4,    name:"unknown"


puts "OfferSourceType seeded"


# CurrencyType
puts "CurrencyType"

def seed_currency_type arg
  arg[:code] = 0 unless arg[:code]
  osct = CurrencyType.find_by_code arg[:code]
  osct = CurrencyType.create! arg unless osct
  puts "  OfferRegion: #{osct.code} #{osct.name} "
  osct
end

$osctRMB = seed_currency_type  code:0,    name:"RMB"
$osctHKD = seed_currency_type  code:1,    name:"HKD"
$osctUSD = seed_currency_type  code:2,    name:"USD"
$osctTWY = seed_currency_type  code:3,    name:"TWY"
$osctTHB = seed_currency_type  code:4,    name:"THB"

puts "CurrencyType seeded"



# OfferType
puts "AvailibilityType"

def seed_availibility_type arg
  arg[:code] = 0 unless arg[:code]
  abt = AvailibilityType.find_by_code arg[:code]
  abt = AvailibilityType.create! arg unless abt
  puts "  AvailibiltyType: #{abt.code} #{abt.name} #{abt.name_en}"
  abt
end

seed_availibility_type code: 0,   name: "availible",          name_en: "availible"
seed_availibility_type code: 1,   name: "availible : manual", name_en: "availible: manual"
seed_availibility_type code: 10,  name: "booked",             name_en: "booked" 
seed_availibility_type code: 11,  name: "booked : manual",    name_en: "booked : manual" 
seed_availibility_type code: 20,  name: "pending",            name_en: "pending"
seed_availibility_type code: 30,  name: "on request",         name_en: "on request"
seed_availibility_type code: 40,  name: "off stock",          name_en: "off stock"

puts "AvailibilityType seeded"


# OfferType
puts "PricingType"

def seed_pricing_type arg
  arg[:code] = 0 unless arg[:code]
  abt = PricingType.find_by_code arg[:code]
  abt = PricingType.create! arg unless abt
  puts "  PricingType: #{abt.code} #{abt.name} #{abt.name_en}"
  abt
end

seed_pricing_type code: 0,   name: "direct",          name_en: "direct"
seed_pricing_type code:10,   name: "airbnb",          name_en: "airbnb"
seed_pricing_type code:20,   name: "wimdu",           name_en: "wimdu"


puts "PricingType seeded"
