ActiveAdmin.register OfferType do
  menu  :label => "const Offer Type",:parent => "Offer"
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
  config.clear_action_items! 

end
