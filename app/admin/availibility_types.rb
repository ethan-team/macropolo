ActiveAdmin.register AvailibilityType do
  menu :label => "const Availibility Type",:parent => "Offer"
  actions :all, :except => [:destroy]

  index :download_links => false do
    column :id
    column :code
    column :name
    column :name_en
  end

  #filter :code
  #filter :name
  #filter :name_en
  config.filters = false
  config.clear_action_items!  
end
