ActiveAdmin.register Availibility do
  menu :parent => "Offer"
  actions :all, :except => [:destroy]

  index :download_links => false do
    column :id
    column :date
    column :offer
    column :availibility_type
  end

end
