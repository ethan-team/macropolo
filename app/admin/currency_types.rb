
ActiveAdmin.register CurrencyType do
  menu :label => "const Currency Type", :parent => "Offer"
  actions :all, :except => [:destroy]
  
  index :download_links => false do
    column :id
    column :code
    column :name
  end 
  config.filters = false
  config.clear_action_items! 
end


