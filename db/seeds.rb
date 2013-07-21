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
  puts "  OfferType: #{ot.code} #{ot.name_cn} #{ot.name_en}"
  ot
end

seed_offer_type code:1,   name_cn:"度假屋",      name_en:"Villa"
seed_offer_type code:2,   name_cn:"度假别墅",    name_en:"Resort"
seed_offer_type code:3,   name_cn:"普通民宅",    name_en:"Homes"
seed_offer_type code:4,   name_cn:"别墅",       name_en:"House"
seed_offer_type code:5,   name_cn:"家庭旅馆",    name_en:"Family Inn"
seed_offer_type code:6,   name_cn:"主题旅馆",    name_en:"Theme Hotel"
seed_offer_type code:7,   name_cn:"酒店式公寓",  name_en:"Service Apartment"
seed_offer_type code:8,   name_cn:"船屋",        name_en:"Houseboat"
seed_offer_type code:10,  name_cn:"经济酒店",    name_en:"Economy Hotel" 
seed_offer_type code:11,  name_cn:"宾馆",       name_en:"Hotel"
seed_offer_type code:12,  name_cn:"客栈",       name_en:"Inn"
seed_offer_type code:13,  name_cn:"青年旅社",    name_en:"Hostel"
seed_offer_type code:20,  name_cn:"村屋",        name_en:"Village House"
seed_offer_type code:21,  name_cn:"四合院",      name_en:"Quardrangle"
seed_offer_type code:22,  name_cn:"营地",        name_en:"Campsite"
seed_offer_type code:30,  name_cn:"其他",        name_en:"Others"

puts "OfferType seeded"

# OfferRegion
puts "OfferRegion"

def seed_offer_region arg
  arg[:code] = 0 unless arg[:code]
  og = OfferRegion.find_by_code arg[:code]
  og = OfferRegion.create! arg unless og
  puts "  OfferRegion: #{og.code} #{og.name_cn} #{og.name_en}"
  og
end

orRoot = seed_offer_region code: 0,  name_cn:"Root",   name_en:"Root",       parent_id: 1
orHK   = seed_offer_region code: 1,  name_cn:"香港",    name_en:"Hong Kong",  parent_id: orRoot.id
orTW   = seed_offer_region code: 2,  name_cn:"台湾",    name_en:"Taiwan",     parent_id: orRoot.id
orTL   = seed_offer_region code: 3,  name_cn:"泰国",    name_en:"Thailand",   parent_id: orRoot.id
orSK   = seed_offer_region code: 4,  name_cn:"韩国",    name_en:"Korea",      parent_id: orRoot.id
orIN   = seed_offer_region code: 5,  name_cn:"印尼",    name_en:"Indonesia ", parent_id: orRoot.id

orHK1   = seed_offer_region code: 101,  name_cn:"香港岛",  name_en:"Hong Kong island",  parent_id: orHK.id
orHK2   = seed_offer_region code: 102,  name_cn:"九龙",    name_en:"Kowloon",  parent_id: orHK.id
orHK3   = seed_offer_region code: 103,  name_cn:"新界",    name_en:"The New Territories",  parent_id: orHK.id

orHK11   = seed_offer_region code: 1011,  name_cn:"中西区",  name_en:"CW",  parent_id: orHK1.id
orHK12   = seed_offer_region code: 1012,  name_cn:"东区",    name_en:"E ",  parent_id: orHK1.id
orHK13   = seed_offer_region code: 1013,  name_cn:"湾仔区",  name_en:"WZ",  parent_id: orHK1.id
orHK14   = seed_offer_region code: 1014,  name_cn:"南区",    name_en:"N",   parent_id: orHK1.id

puts "OfferRegion seeded"



# OfferOwner
puts "OfferOwner"

def seed_offer_owner arg
  arg[:name_cn] = "Unkwown" unless arg[:name_cn]
  oo = OfferOwner.find_by_name_cn arg[:name_cn]
  oo = OfferOwner.create! arg unless oo  
  puts "  OfferOwner: #{oo.name_cn} #{oo.name_en}"
  oo
end

seed_offer_owner name_cn:"Alibaba", name_en:"Alibaba", supplier_name: "Alibaba", contact_person:"Ma Yun 1", phone: "12345678"
seed_offer_owner name_cn:"TaoBao",  name_en:"TaoBao",  supplier_name:  "TaoBao",  contact_person:"Ma Yun 2", phone: "12345678"
seed_offer_owner name_cn:"ZhiFuBao",  name_en:"ZhiFuBao",  supplier_name:  "ZhiFuBao",  contact_person:"Ma Yun 3", phone: "12345678"

puts "OfferOwner seeded"


# OfferStatus
puts "OfferStatus"

def seed_offer_status arg
  arg[:code] = 0 unless arg[:code]
  os = OfferStatus.find_by_code arg[:code]
  os = OfferStatus.create! arg unless os
  puts "  OfferRegion: #{os.code} #{os.name_cn} #{os.name_en}"
  os
end

seed_offer_status  code:0,    name_cn:"initiating",           name_en:"initiating"
seed_offer_status  code:1,    name_cn:"reviewing",            name_en:"reviewing"
seed_offer_status  code:2,    name_cn:"waiting for approval", name_en:"waiting for approval" 
seed_offer_status  code:10,   name_cn:"off stock",            name_en:"off stock"
seed_offer_status  code:11,   name_cn:"on hold",              name_en:"on hold"
seed_offer_status  code:100,  name_cn:"on stock",             name_en:"on stock"

puts "OfferStatus seeded"


#Offer
puts "Offer"

def seed_offer arg
  arg[:name_cn] = "Unkwown" unless arg[:name_cn]
  offer = Offer.find_by_name_cn arg[:name_cn]
  offer = Offer.create! arg unless offer  
  puts "  OfferOwner: #{offer.name_cn} #{offer.name_en}"
  offer
end

seed_offer name_cn:"offer1: hong kong apartment 1",  address_cn:"101 main street, central, hongkong",  size_in_m2:100
seed_offer name_cn:"offer2: hong kong apartment 2",  address_cn:"102 main street, central, hongkong",  size_in_m2:100
seed_offer name_cn:"offer3: hong kong apartment 3",  address_cn:"103 main street, central, hongkong",  size_in_m2:100
seed_offer name_cn:"offer4: hong kong apartment 4",  address_cn:"104 main street, central, hongkong",  size_in_m2:100
seed_offer name_cn:"offer5: hong kong apartment 5",  address_cn:"105 main street, central, hongkong",  size_in_m2:100
seed_offer name_cn:"offerA: hong kong apartment A",  address_cn:"A 105 main street, central, hongkong",  size_in_m2:100
seed_offer name_cn:"offerB: hong kong apartment B",  address_cn:"B 105 main street, central, hongkong",  size_in_m2:100
seed_offer name_cn:"offerC: hong kong apartment C",  address_cn:"C 105 main street, central, hongkong",  size_in_m2:100
seed_offer name_cn:"offerD: hong kong apartment D",  address_cn:"D 105 main street, central, hongkong",  size_in_m2:100
seed_offer name_cn:"offerE: hong kong apartment D",  address_cn:"E 105 main street, central, hongkong",  size_in_m2:100
seed_offer name_cn:"offer11: hong kong apartment 11",  address_cn:"101 main street, central, hongkong",  size_in_m2:100
seed_offer name_cn:"offer12: hong kong apartment 12",  address_cn:"102 main street, central, hongkong",  size_in_m2:100
seed_offer name_cn:"offer13: hong kong apartment 13",  address_cn:"103 main street, central, hongkong",  size_in_m2:100
seed_offer name_cn:"offer14: hong kong apartment 14",  address_cn:"104 main street, central, hongkong",  size_in_m2:100
seed_offer name_cn:"offer15: hong kong apartment 15",  address_cn:"105 main street, central, hongkong",  size_in_m2:100
seed_offer name_cn:"offer1A: hong kong apartment 1A",  address_cn:"A 105 main street, central, hongkong",  size_in_m2:100
seed_offer name_cn:"offer1B: hong kong apartment 1B",  address_cn:"B 105 main street, central, hongkong",  size_in_m2:100
seed_offer name_cn:"offer1C: hong kong apartment 1C",  address_cn:"C 105 main street, central, hongkong",  size_in_m2:100
seed_offer name_cn:"offer1D: hong kong apartment 1D",  address_cn:"D 105 main street, central, hongkong",  size_in_m2:100
seed_offer name_cn:"offer1E: hong kong apartment 1D",  address_cn:"E 105 main street, central, hongkong",  size_in_m2:100
seed_offer name_cn:"offer111: hong kong apartment 1",  address_cn:"101 main street, central, hongkong",  size_in_m2:100
seed_offer name_cn:"offer112: hong kong apartment 2",  address_cn:"102 main street, central, hongkong",  size_in_m2:100
seed_offer name_cn:"offer113: hong kong apartment 3",  address_cn:"103 main street, central, hongkong",  size_in_m2:100
seed_offer name_cn:"offer114: hong kong apartment 4",  address_cn:"104 main street, central, hongkong",  size_in_m2:100
seed_offer name_cn:"offer115: hong kong apartment 5",  address_cn:"105 main street, central, hongkong",  size_in_m2:100
seed_offer name_cn:"offer11A: hong kong apartment A",  address_cn:"A 105 main street, central, hongkong",  size_in_m2:100
seed_offer name_cn:"offer11B: hong kong apartment B",  address_cn:"B 105 main street, central, hongkong",  size_in_m2:100
seed_offer name_cn:"offer11C: hong kong apartment C",  address_cn:"C 105 main street, central, hongkong",  size_in_m2:100
seed_offer name_cn:"offer11D: hong kong apartment D",  address_cn:"D 105 main street, central, hongkong",  size_in_m2:100
seed_offer name_cn:"offer11E: hong kong apartment D",  address_cn:"E 105 main street, central, hongkong",  size_in_m2:100
seed_offer name_cn:"offer111: hong kong apartment 11",  address_cn:"101 main street, central, hongkong",  size_in_m2:100
seed_offer name_cn:"offer112: hong kong apartment 12",  address_cn:"102 main street, central, hongkong",  size_in_m2:100
seed_offer name_cn:"offer113: hong kong apartment 13",  address_cn:"103 main street, central, hongkong",  size_in_m2:100
seed_offer name_cn:"offer114: hong kong apartment 14",  address_cn:"104 main street, central, hongkong",  size_in_m2:100
seed_offer name_cn:"offer115: hong kong apartment 15",  address_cn:"105 main street, central, hongkong",  size_in_m2:100
seed_offer name_cn:"offer11A: hong kong apartment 1A",  address_cn:"A 105 main street, central, hongkong",  size_in_m2:100
seed_offer name_cn:"offer11B: hong kong apartment 1B",  address_cn:"B 105 main street, central, hongkong",  size_in_m2:100
seed_offer name_cn:"offer11C: hong kong apartment 1C",  address_cn:"C 105 main street, central, hongkong",  size_in_m2:100
seed_offer name_cn:"offer11D: hong kong apartment 1D",  address_cn:"D 105 main street, central, hongkong",  size_in_m2:100
seed_offer name_cn:"offer11E: hong kong apartment 1D",  address_cn:"E 105 main street, central, hongkong",  size_in_m2:100


puts "Offer seeded"