ActiveAdmin.register OfferType do

  menu :parent => "Offer"

  index :download_links => false do
    column :id
    column :code
    column :name_cn
    column :name_en
  end

  config.filters = false

end
