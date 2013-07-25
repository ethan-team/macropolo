#encoding: utf-8


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


u7 = seed_user name:"ethan", email:"ethan.jiang@zhubaijia.com"
u7.add_role :site_admin
u7.add_role :operation_admin

u8 = seed_user name:"ann", email:"ann.wang@zhubaijia.com"
u8.add_role :operation_admin

u9 = seed_user name:"ken", email:"ken.zhang@zhubaijia.com"
u9.add_role :operation_host

u10 = seed_user name:"shanon", email:"shanon.li@zhubaijia.com"
u10.add_role :operation_guest


u20 = seed_user name:"guest info.zhubaijia", email:"info.zhubaijia@gmail.com"
u20.add_role :user

u21 = seed_user name:"guest ethan one", email:"ethan1.jiang@gmail.com"
u21.add_role :user 

u22 = seed_user name:"guest ethan two", email:"ethan2.jiang@gmail.com"
u22.add_role :user 

u23 = seed_user name:"guest ethan three", email:"ethan3.jiang@gmail.com"
u23.add_role :user 


puts "User seeded"
