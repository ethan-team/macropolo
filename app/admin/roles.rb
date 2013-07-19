ActiveAdmin.register Role do
  menu :parent => "Account"
  actions :all, :except => [:destroy]

  index :download_links => false do
    column :id
    column :name
    column :resource_type
  end

  config.filters = false
end

