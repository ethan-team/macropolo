ActiveAdmin.register OfferRegion do

  menu :parent => "Offer"

  index :download_links => false do
    column :id
    column :code
    column :name_cn
    column :name_en
    column :parent_id
  end

  config.filters = false

end
