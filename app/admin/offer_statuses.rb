ActiveAdmin.register OfferStatus do
  menu :label => "const Offer Status", :parent => "Offer"
  actions :all, :except => [:destroy]

  index :download_links => false do
    column :id
    column :code
    column :name
    column :name_en
  end

  config.filters = false
  config.clear_action_items!
end
