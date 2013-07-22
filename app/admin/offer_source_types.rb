ActiveAdmin.register OfferSourceType do
 menu :parent => "Offer"
 index :download_links => false do
    column :id
    column :code
    column :name
  end  
end
