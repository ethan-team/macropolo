ActiveAdmin.register User do
  def scoped_collection
    User.includes(:roles)
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


  index do
    column "Registered email", :email
    column :name
    column "Roles" do |user|
       user.role_ids.each do |id|
          Role.find_by_id(id).name.to_s
       end
    end
    default_actions
  end

  filter :name, :as => :string
  filter :email, :as => :string

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
