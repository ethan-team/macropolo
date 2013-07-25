#encoding: utf-8

# OfferRegion
puts "OfferRegion"

def seed_offer_region arg
  arg[:code] = 0 unless arg[:code]
  og = OfferRegion.find_by_code arg[:code]
  og = OfferRegion.create! arg unless og
  puts "  OfferRegion: #{og.code} #{og.name} #{og.name_en}"
  og
end

orRoot = seed_offer_region code: 0,  name:"Root",   name_en:"Root",       parent_id: 1
orHK   = seed_offer_region code: 1,  name:"香港",    name_en:"Hong Kong",  parent_id: orRoot.id
orTW   = seed_offer_region code: 2,  name:"台湾",    name_en:"Taiwan",     parent_id: orRoot.id
orTL   = seed_offer_region code: 3,  name:"泰国",    name_en:"Thailand",   parent_id: orRoot.id
orSK   = seed_offer_region code: 4,  name:"韩国",    name_en:"Korea",      parent_id: orRoot.id
orIN   = seed_offer_region code: 5,  name:"印尼",    name_en:"Indonesia ", parent_id: orRoot.id

orHK1   = seed_offer_region code: 101,  name:"香港岛",  name_en:"Hong Kong island",  parent_id: orHK.id
orHK2   = seed_offer_region code: 102,  name:"九龙",    name_en:"Kowloon",  parent_id: orHK.id
orHK3   = seed_offer_region code: 103,  name:"新界",    name_en:"The New Territories",  parent_id: orHK.id

orHK11   = seed_offer_region code: 1011,  name:"中西区",  name_en:"CW",  parent_id: orHK1.id
orHK12   = seed_offer_region code: 1012,  name:"东区",    name_en:"E ",  parent_id: orHK1.id
orHK13   = seed_offer_region code: 1013,  name:"湾仔区",  name_en:"WZ",  parent_id: orHK1.id
orHK14   = seed_offer_region code: 1014,  name:"南区",    name_en:"N",   parent_id: orHK1.id

puts "OfferRegion seeded"



# OfferOwner
puts "OfferOwner"

def seed_offer_owner arg
  arg[:name] = "Unkwown" unless arg[:name]
  oo = OfferOwner.find_by_name arg[:name]
  oo = OfferOwner.create! arg unless oo
  puts "  OfferOwner: #{oo.name} #{oo.name_en}"
  oo
end

seed_offer_owner name:"阿里巴巴", name_en:"Alibaba", supplier_name: "Alibaba", contact_person:"Ma Yun 1", phone: "12345678"
seed_offer_owner name:"淘宝",  name_en:"TaoBao",  supplier_name:  "TaoBao",  contact_person:"Ma Yun 2", phone: "12345678"
seed_offer_owner name:"支付宝",  name_en:"ZhiFuBao",  supplier_name:  "ZhiFuBao",  contact_person:"Ma Yun 3", phone: "12345678"

puts "OfferOwner seeded"





#Currency_to_rmb_rate
puts "Currency_to_rmb_rate"
CurrencyToRmbRate.create! currency_type_id:$osctRMB.id, rate:1,    reviewed: 1
CurrencyToRmbRate.create! currency_type_id:$osctHKD.id, rate:0.82, reviewed: 1
CurrencyToRmbRate.create! currency_type_id:$osctUSD.id, rate:6.21, reviewed: 1
CurrencyToRmbRate.create! currency_type_id:$osctTWY.id, rate:2.5,  reviewed: 1
CurrencyToRmbRate.create! currency_type_id:$osctTHB.id, rate:0.13,   reviewed: 1

puts "Currency_to_rmb_rate seeded"



#Offer
puts "Offer"

def seed_offer arg
  arg[:name] = "Unkwown" unless arg[:name]
  arg[:address] = "somewhere at street No." + rand(1000).to_s 
  arg[:code] = rand(10000).to_s unless arg[:code]
  arg[:size_in_m2] = rand(300) 
  offer = Offer.find_by_code arg[:code]
  offer = Offer.create! arg unless offer
  puts "  OfferOwner: #{offer.name}"
  offer
end

seed_offer name:"offer1: hong kong apartment 1"    
seed_offer name:"offer2: hong kong apartment 2"   
seed_offer name:"offer3: hong kong apartment 3"   
seed_offer name:"offer4: hong kong apartment 4"   
seed_offer name:"offer5: hong kong apartment 5"   
seed_offer name:"offerA: hong kong apartment A"   
seed_offer name:"offerB: hong kong apartment B"   
seed_offer name:"offerC: hong kong apartment C"   
seed_offer name:"offerD: hong kong apartment D"   
seed_offer name:"offerE: hong kong apartment D"
seed_offer name:"offer11: hong kong apartment 11"
seed_offer name:"offer12: hong kong apartment 12"
seed_offer name:"offer13: hong kong apartment 13"
seed_offer name:"offer14: hong kong apartment 14"
seed_offer name:"offer15: hong kong apartment 15"
seed_offer name:"offer1A: hong kong apartment 1A"
seed_offer name:"offer1B: hong kong apartment 1B"
seed_offer name:"offer1C: hong kong apartment 1C"
seed_offer name:"offer1D: hong kong apartment 1D"
seed_offer name:"offer1E: hong kong apartment 1D"
seed_offer name:"offer111: hong kong apartment 1"
seed_offer name:"offer112: hong kong apartment 2"
seed_offer name:"offer113: hong kong apartment 3"
seed_offer name:"offer114: hong kong apartment 4"
seed_offer name:"offer115: hong kong apartment 5"
seed_offer name:"offer11A: hong kong apartment A"
seed_offer name:"offer11B: hong kong apartment B"
seed_offer name:"offer11C: hong kong apartment C"
seed_offer name:"offer11D: hong kong apartment D"
seed_offer name:"offer11E: hong kong apartment D"
seed_offer name:"offer111: hong kong apartment 11"

puts "Offer seeded"

