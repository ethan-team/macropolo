ActiveAdmin.register Role do
  menu :label => "const Role", :parent => "Account"
  actions :all, :except => [:destroy]

  index :download_links => false do
    column :id
    column :name
    column :resource_id
    column :resource_type
  end

  config.filters = false
  config.clear_action_items!
end

