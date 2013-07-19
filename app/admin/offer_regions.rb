ActiveAdmin.register OfferRegion do
  menu :parent => "Offer"
  actions :all, :except => [:destroy]

  index :download_links => false do
    column :id
    column :code
    column :name_cn
    column :name_en
    column :parent
    default_actions 
  end

  filter :parent

end
