ActiveAdmin.register OfferStatus do
   menu :parent => "Offer"

  index :download_links => false do
    column :id
    column :code
    column :name_cn
    column :name_en
  end

  index :as=> :grid do |os|
  	link_to(ot.name_cn,admin_offer_status_path(os))
  end 

  filter :code
  filter :name_cn
  filter :name_en
end
