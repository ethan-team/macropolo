def roles_with_display_names u
  x = "< "
  u.roles.each do |r|
     x+= r.display_name + " "
  end
  x += ">"
end

## ActiveAdmin - how to deal with build-in actions
# 
# Support following actions 
#  actions :index, :show, :new, :create, :update, :edit
# for example you can define
# ActiveAdmin.register YourResource do 
#  actions :all, :except => [:destroy]
# ....
# end 

ActiveAdmin.register User do
  menu :parent => "Account"
  actions :all, :except => [:destroy]

  index :download_links => false do
    column :id 
    column "Registered email", :email
    column :name
    column "Roles" do |user|
      roles_with_display_names user
    end
    
    default_actions
  end

=begin
  index :as => :block do |user|
    div :for => user do
      h2 auto_link(user.name)
      h2 auto_link(user.email)
      div do
        simple_format user.role_ids.to_s
      end
    end
  end
=end

  filter :name, :as => :string
  filter :email, :as => :string
  #TODO,  provide checkbox to filter different roles
  #filter :role_ids 

  form do |f|
    f.inputs "roles" do
      f.input  :name
      f.input  :email
      f.input  :password
      f.input  :password_confirmation
      f.input  :roles
      f.buttons
    end
  end

end
