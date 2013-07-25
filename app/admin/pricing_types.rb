ActiveAdmin.register PricingType do
  menu :parent => "Offer"
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
end
