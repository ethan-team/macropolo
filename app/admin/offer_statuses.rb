ActiveAdmin.register OfferStatus do
  menu :parent => "Offer"
  actions :all, :except => [:destroy]

  index :download_links => false do
    column :id
    column :code
    column :name_cn
    column :name_en
  end

  config.filters = false
end
