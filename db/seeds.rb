#encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) can be set in the file config/application.yml.
# See http://railsapps.github.io/rails-environment-variables.html


#Role
puts 'Role'
YAML.load(ENV['ROLES']).each do |role|
  Role.find_or_create_by_name({ :name => role }, :without_protection => true)
  puts '  role: ' << role
end
puts "Role seeded"

#User
def seed_user arg
  arg[:password] = "12345678" unless arg[:password]
  arg[:password_confirmation] = arg[:password]
  arg[:name] = "nobody" unless arg[:name]
  arg[:email] = "nobody@nowhere.com" unless arg[:email]
  u = User.find_or_create_by_name arg
  puts "  user #{arg[:email]}"
  u
end

puts 'User'
u0 = seed_user :name => ENV['ADMIN_NAME'].dup, :email => ENV['ADMIN_EMAIL'].dup, :password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup
u0.add_role :admin

u1 = seed_user name:"admin", email:"admin@zhubaijia.com"
u1.add_role :admin

u2 = seed_user name:"site_admin", email:"site_admin@zhubaijia.com"
u2.add_role :site_admin

u3 = seed_user name:"operation_admin", email:"operation_admin@zhubaijia.com"
u3.add_role :opration_admin

u4 = seed_user name:"operation_host", email:"operation_host@zhubaijia.com"
u4.add_role :operation_host

u5 = seed_user name:"operation_guest", email:"operation_guest@zhubaijia.com"
u5.add_role :operation_guest

u6 = seed_user name:"user", email:"user@gmail.com"
u6.add_role :user

u7 = seed_user name:"ethan", email:"ethan.jiang@zhubaijia.com"
u7.add_role :site_admin
u7.add_role :operation_admin

u8 = seed_user name:"ann", email:"ann.wang@zhubaijia.com"
u8.add_role :operation_admin

u9 = seed_user name:"ken", email:"ken.zhang@zhubaijia.com"
u9.add_role :operation_host

u10 = seed_user name:"shanon", email:"shanon.li@zhubaijia.com"
u10.add_role :operation_guest

puts "User seeded"


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


# OfferSourceCurrencyType
puts "OfferSourceCurrencyType"

def seed_offer_source_currency_type arg
  arg[:code] = 0 unless arg[:code]
  osct = OfferSourceCurrencyType.find_by_code arg[:code]
  osct = OfferSourceCurrencyType.create! arg unless osct
  puts "  OfferRegion: #{osct.code} #{osct.name} "
  osct
end

osctRMB = seed_offer_source_currency_type  code:0,    name:"RMB"
osctHKD = seed_offer_source_currency_type  code:1,    name:"HKD"
osctUSD = seed_offer_source_currency_type  code:2,    name:"USD"
osctTWY = seed_offer_source_currency_type  code:3,    name:"TWY"
osctTHB = seed_offer_source_currency_type  code:4,    name:"THB"

puts "OfferSourceCurrencyType seeded"

#Currency_to_rmb_rate
puts "Currency_to_rmb_rate"
CurrencyToRmbRate.create! offer_source_currency_type_id:osctRMB.id, rate:1,    reviewed: 1
CurrencyToRmbRate.create! offer_source_currency_type_id:osctHKD.id, rate:0.82, reviewed: 1
CurrencyToRmbRate.create! offer_source_currency_type_id:osctUSD.id, rate:6.21, reviewed: 1
CurrencyToRmbRate.create! offer_source_currency_type_id:osctTWY.id, rate:2.5,  reviewed: 1
CurrencyToRmbRate.create! offer_source_currency_type_id:osctTHB.id, rate:0.13,   reviewed: 1

puts "Currency_to_rmb_rate seeded"


#Offer
puts "Offer"

def seed_offer arg
  arg[:name] = "Unkwown" unless arg[:name]
  offer = Offer.find_by_name arg[:name]
  offer = Offer.create! arg unless offer
  puts "  OfferOwner: #{offer.name} #{offer.name_en}"
  offer
end

seed_offer name:"offer1: hong kong apartment 1",    code: 100,    address:"101 main street, central, hongkong",  size_in_m2:100
seed_offer name:"offer2: hong kong apartment 2",    code: 101,    address:"102 main street, central, hongkong",  size_in_m2:100
seed_offer name:"offer3: hong kong apartment 3",    code: 102,    address:"103 main street, central, hongkong",  size_in_m2:100
seed_offer name:"offer4: hong kong apartment 4",    code: 103,    address:"104 main street, central, hongkong",  size_in_m2:100
seed_offer name:"offer5: hong kong apartment 5",    code: 105,    address:"105 main street, central, hongkong",  size_in_m2:100
seed_offer name:"offerA: hong kong apartment A",    code: 107,    address:"A 105 main street, central, hongkong",  size_in_m2:100
seed_offer name:"offerB: hong kong apartment B",    code: 108,    address:"B 105 main street, central, hongkong",  size_in_m2:100
seed_offer name:"offerC: hong kong apartment C",    code: 109,    address:"C 105 main street, central, hongkong",  size_in_m2:100
seed_offer name:"offerD: hong kong apartment D",    code: 111,    address:"D 105 main street, central, hongkong",  size_in_m2:100
seed_offer name:"offerE: hong kong apartment D",    code: 1030,   address:"E 105 main street, central, hongkong",  size_in_m2:100
seed_offer name:"offer11: hong kong apartment 11",  code: 1200,   address:"101 main street, central, hongkong",  size_in_m2:100
seed_offer name:"offer12: hong kong apartment 12",  code: 1367,   address:"102 main street, central, hongkong",  size_in_m2:100
seed_offer name:"offer13: hong kong apartment 13",  code: 1040,   address:"103 main street, central, hongkong",  size_in_m2:100
seed_offer name:"offer14: hong kong apartment 14",  code: 12031,  address:"104 main street, central, hongkong",  size_in_m2:100
seed_offer name:"offer15: hong kong apartment 15",  code: 1300,   address:"105 main street, central, hongkong",  size_in_m2:100
seed_offer name:"offer1A: hong kong apartment 1A",  code: 1049,   address:"A 105 main street, central, hongkong",  size_in_m2:100
seed_offer name:"offer1B: hong kong apartment 1B",  code: 1029,   address:"B 105 main street, central, hongkong",  size_in_m2:100
seed_offer name:"offer1C: hong kong apartment 1C",  code: 12030,  address:"C 105 main street, central, hongkong",  size_in_m2:100
seed_offer name:"offer1D: hong kong apartment 1D",  code: 1027,   address:"D 105 main street, central, hongkong",  size_in_m2:100
seed_offer name:"offer1E: hong kong apartment 1D",  code: 1020,   address:"E 105 main street, central, hongkong",  size_in_m2:100
seed_offer name:"offer111: hong kong apartment 1",  code: 1021,   address:"101 main street, central, hongkong",  size_in_m2:100
seed_offer name:"offer112: hong kong apartment 2",  code: 1201,   address:"102 main street, central, hongkong",  size_in_m2:100
seed_offer name:"offer113: hong kong apartment 3",  code: 12100,  address:"103 main street, central, hongkong",  size_in_m2:100
seed_offer name:"offer114: hong kong apartment 4",  code: 1310,   address:"104 main street, central, hongkong",  size_in_m2:100
seed_offer name:"offer115: hong kong apartment 5",  code: 1033,   address:"105 main street, central, hongkong",  size_in_m2:100
seed_offer name:"offer11A: hong kong apartment A",  code: 1044,   address:"A 105 main street, central, hongkong",  size_in_m2:100
seed_offer name:"offer11B: hong kong apartment B",  code: 1055,   address:"B 105 main street, central, hongkong",  size_in_m2:100
seed_offer name:"offer11C: hong kong apartment C",  code: 1022,   address:"C 105 main street, central, hongkong",  size_in_m2:100
seed_offer name:"offer11D: hong kong apartment D",  code: 1066,   address:"D 105 main street, central, hongkong",  size_in_m2:100
seed_offer name:"offer11E: hong kong apartment D",  code: 1506,   address:"E 105 main street, central, hongkong",  size_in_m2:100
seed_offer name:"offer111: hong kong apartment 11", code: 1240,   address:"101 main street, central, hongkong",  size_in_m2:100
seed_offer name:"offer112: hong kong apartment 12", code: 1120,   address:"102 main street, central, hongkong",  size_in_m2:100
seed_offer name:"offer113: hong kong apartment 13", code: 1068,   address:"103 main street, central, hongkong",  size_in_m2:100
seed_offer name:"offer114: hong kong apartment 14", code: 190,    address:"104 main street, central, hongkong",  size_in_m2:100
seed_offer name:"offer115: hong kong apartment 15", code: 1067,   address:"105 main street, central, hongkong",  size_in_m2:100
seed_offer name:"offer11A: hong kong apartment 1A", code: 1089,   address:"A 105 main street, central, hongkong",  size_in_m2:100
seed_offer name:"offer11B: hong kong apartment 1B", code: 1150,   address:"B 105 main street, central, hongkong",  size_in_m2:100
seed_offer name:"offer11C: hong kong apartment 1C", code: 1077,   address:"C 105 main street, central, hongkong",  size_in_m2:100
seed_offer name:"offer11D: hong kong apartment 1D", code: 10877,  address:"D 105 main street, central, hongkong",  size_in_m2:100
seed_offer name:"offer11E: hong kong apartment 1D", code: 10442,  address:"E 105 main street, central, hongkong",  size_in_m2:100


puts "Offer seeded"
