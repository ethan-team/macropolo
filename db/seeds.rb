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
puts 'User'
user1 = User.find_or_create_by_email :name => ENV['ADMIN_NAME'].dup, :email => ENV['ADMIN_EMAIL'].dup, :password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup
user1.add_role :admin

user2 = User.find_or_create_by_email name:"site_admin", email:"site_admin@zhubaijia.com",      password:"12345678", password_confirmation:"12345678"  
user2.add_role :site_admin

user3 = User.find_or_create_by_email name:"operation_admin", email:"operation_admin@zhubaijia.com",     password:"12345678", password_confirmation:"12345678"
user3.add_role :opration_admin

user4 = User.find_or_create_by_email name:"operation_host", email:"operation_host@zhubaijia.com", password:"12345678", password_confirmation:"12345678"
user4.add_role :operation_host

user4 = User.find_or_create_by_email name:"operation_guest", email:"operation_guest@zhubaijia.com", password:"12345678", password_confirmation:"12345678"
user4.add_role :operation_guest

user5 = User.find_or_create_by_email name:"user", email:"user@gmail.com",  password:"11111111", password_confirmation:"11111111"
user5.add_role :user 

user5 = User.find_or_create_by_email name:"ethan", email:"ethan.jiang@zhubaijia.com",  password:"12345678", password_confirmation:"12345678"
user5.add_role :site_admin
user5.add_role :operation_admin

user6 = User.find_or_create_by_email name:"ann", email:"ann.wang@zhubaijia.com",  password:"12345678", password_confirmation:"12345678"
user6.add_role :operation_admin

user7 = User.find_or_create_by_email name:"ken", email:"ken.zhang@zhubaijia.com",  password:"12345678", password_confirmation:"12345678"
user7.add_role :operation_host

user8 = User.find_or_create_by_email name:"shanon", email:"shanon.li@zhubaijia.com",  password:"12345678", password_confirmation:"12345678"
user8.add_role :operation_guest



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
puts "OfferTypes seeded"

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
  OfferOwner.create!(name_cn:"Alibaba", name_en:"Alibaba", supplier_name: "Alibaba", contact_person:"Ma Yun", phone: "12345678")
  OfferOwner.create!(name_cn:"Alibaba1", name_en:"Alibaba1", supplier_name: "Alibaba", contact_person:"Ma Yun", phone: "12345678")

rescue Exception => e
  puts "*Alert*: OfferOwner is not an empty database !"
end
puts "OfferOwner seeded"
