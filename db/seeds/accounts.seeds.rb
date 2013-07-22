#encoding: utf-8

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
