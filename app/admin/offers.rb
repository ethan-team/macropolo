ActiveAdmin.register Offer do
  menu :parent => "Offer"
  actions :all, :except => [:destroy]

  index :download_links => false do
    column :id
    column :name_cn
    column :name_en
    column :address_cn
    column :address_en
    column :offer_owner
    column :offer_region
    column :offer_status
    column :offer_type 
    default_actions
  end

  index :as=> :grid do |ot|
  	link_to(ot.name_cn,admin_offer_type_path(ot))
  end 

  filter :code
  filter :name_cn
  filter :name_en
  filter :offer_owner
  filter :offer_region
  filter :offer_status
  filter :offer_type 


end
