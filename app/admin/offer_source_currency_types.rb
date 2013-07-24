ActiveAdmin.register OfferSourceCurrencyType do
  menu :parent => "Offer"
  actions :all, :except => [:destroy]
  
  index :download_links => false do
    column :id
    column :code
    column :name
  end 
  config.filters = false 
end
