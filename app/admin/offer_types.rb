ActiveAdmin.register OfferType do
  menu :parent => "Offer"
  actions :all, :except => [:destroy]

  index :download_links => false do
    column :id
    column :code
    column :name
    column :name_en
  end

  #index :as=> :grid do |ot|
  #	link_to(ot.name,admin_offer_type_path(ot))
  #end 

  #filter :code
  #filter :name
  #filter :name_en
  config.filters = false

end
