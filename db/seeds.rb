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

u1 = seed_user name:"site_admin", email:"site_admin@zhubaijia.com"
u1.add_role :site_admin

u2 = seed_user name:"operation_admin", email:"operation_admin@zhubaijia.com"
u2.add_role :opration_admin

u3 = seed_user name:"operation_host", email:"operation_host@zhubaijia.com"
u3.add_role :operation_host

u4 = seed_user name:"operation_guest", email:"operation_guest@zhubaijia.com"
u4.add_role :operation_guest

u5 = seed_user name:"user", email:"user@gmail.com"
u5.add_role :user 

u6 = seed_user name:"ethan", email:"ethan.jiang@zhubaijia.com"
u6.add_role :site_admin
u6.add_role :operation_admin

u7 = seed_user name:"ann", email:"ann.wang@zhubaijia.com"
u7.add_role :operation_admin

u8 = seed_user name:"ken", email:"ken.zhang@zhubaijia.com"
u8.add_role :operation_host

u9 = seed_user name:"shanon", email:"shanon.li@zhubaijia.com"
u9.add_role :operation_guest

puts "User seeded"


# OfferType
puts "OfferType"
begin
  OfferType.create!(code:1,   name_cn:"普通民宅",    name_en:"Homes")
  OfferType.create!(code:2,   name_cn:"酒店式公寓",  name_en:"Service Apartment")
  OfferType.create!(code:3,   name_cn:"经济酒店",    name_en:"Economy Hotel ")
  OfferType.create!(code:4,   name_cn:"宾馆",       name_en:"Hotel")
  OfferType.create!(code:5,   name_cn:"家庭旅馆",    name_en:"Family Inn")
  OfferType.create!(code:6,   name_cn:"主题旅馆",    name_en:"Theme Hotel")
  OfferType.create!(code:7,   name_cn:"客栈",       name_en:"Inn")
  OfferType.create!(code:8,   name_cn:"青年旅社",    name_en:"Hostel")
  OfferType.create!(code:9,   name_cn:"度假屋",      name_en:"Villa")
  OfferType.create!(code:10,  name_cn:"村屋",        name_en:"Village House")
  OfferType.create!(code:11,  name_cn:"四合院",      name_en:"Quardrangle")
  OfferType.create!(code:12,  name_cn:"别墅",        name_en:"House")
  OfferType.create!(code:13,  name_cn:"船屋",        name_en:"Houseboat")
  OfferType.create!(code:14,  name_cn:"营地",        name_en:"Campsite")
  OfferType.create!(code:15,  name_cn:"其他",        name_en:"Others")
rescue Exception => e
  puts "*Alert*: OfferType is not an empty database!"
end
puts "OfferType seeded"

# OfferRegion
puts "OfferRegion"
begin
  orRoot = OfferRegion.create!(code: 0,  name_cn:"Root",   name_en:"Root",       parent_id: 1)
  orHK   = OfferRegion.create!(code: 1,  name_cn:"香港",    name_en:"Hong Kong",  parent_id: orRoot.id)
  orTW   = OfferRegion.create!(code: 2,  name_cn:"台湾",    name_en:"Taiwan",     parent_id: orRoot.id)
  orTL   = OfferRegion.create!(code: 3,  name_cn:"泰国",    name_en:"Thailand",   parent_id: orRoot.id)
  orSK   = OfferRegion.create!(code: 4,  name_cn:"韩国",    name_en:"Korea",      parent_id: orRoot.id)
  orIN   = OfferRegion.create!(code: 5,  name_cn:"印尼",    name_en:"Indonesia ", parent_id: orRoot.id)

  orHK1   = OfferRegion.create!(code: 101,  name_cn:"香港岛",  name_en:"Hong Kong island",  parent_id: orHK.id)
  orHK2   = OfferRegion.create!(code: 102,  name_cn:"九龙",    name_en:"Kowloon",  parent_id: orHK.id)
  orHK3   = OfferRegion.create!(code: 103,  name_cn:"新界",    name_en:"The New Territories",  parent_id: orHK.id)

  orHK11   = OfferRegion.create!(code: 1011,  name_cn:"中西区",  name_en:"CW",  parent_id: orHK1.id)
  orHK12   = OfferRegion.create!(code: 1012,  name_cn:"东区",    name_en:"E ",  parent_id: orHK1.id)
  orHK13   = OfferRegion.create!(code: 1013,  name_cn:"湾仔区",  name_en:"WZ",  parent_id: orHK1.id)
  orHK14   = OfferRegion.create!(code: 1014,  name_cn:"南区",    name_en:"N",   parent_id: orHK1.id)


rescue Exception => e
  puts "*Alert*: OfferRegion is not an empty database !"
end
puts "OfferRegion seeded"


# OfferOwner
puts "OfferOwner"
begin
  OfferOwner.create!(name_cn:"Alibaba", name_en:"Alibaba", supplier_name: "Alibaba", contact_person:"Ma Yun 1", phone: "12345678")
  OfferOwner.create!(name_cn:"TaoBao",  name_en:"TaoBao",  supplier_name:  "TaoBao",  contact_person:"Ma Yun 2", phone: "12345678")
  OfferOwner.create!(name_cn:"ZhiFuBao",  name_en:"ZhiFuBao",  supplier_name:  "ZhiFuBao",  contact_person:"Ma Yun 3", phone: "12345678")

rescue Exception => e
  puts "*Alert*: OfferOwner is not an empty database !"
end
puts "OfferOwner seeded"


# OfferStatus
puts "OfferStatus"
begin
  OfferStatus.create!(code:0,   name_cn:"loading",              name_en:"loading")
  OfferStatus.create!(code:1,   name_cn:"waiting for approval", name_en:"waiting for approval" )
  OfferStatus.create!(code:2,   name_cn:"off stock",            name_en:"off stock")
  OfferStatus.create!(code:3,   name_cn:"on hold",              name_en:"on hold")
  OfferStatus.create!(code:10,  name_cn:"on stock",             name_en:"on stock")

rescue Exception => e
  puts "*Alert*: OfferStatus is not an empty database!"
end
puts "OfferStatus seeded"