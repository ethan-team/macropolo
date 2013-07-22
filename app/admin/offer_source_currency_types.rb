ActiveAdmin.register OfferSourceCurrencyType do
  menu :parent => "Offer"
  index :download_links => false do
    column :id
    column :code
    column :name
  end 
  config.filters = false 
end
