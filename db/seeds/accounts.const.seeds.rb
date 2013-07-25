#encoding: utf-8

#Role
puts 'Role'

YAML.load(ENV['ROLES_ADMIN']).each do |role|
  Role.find_or_create_by_name({ :name => role }, :without_protection => true)
  puts '  admin role: ' << role
end

YAML.load(ENV['ROLES_USER']).each do |role|
  Role.find_or_create_by_name({ :name => role }, :without_protection => true)
  puts '  user role: ' << role
end


puts "Role seeded"
