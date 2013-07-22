ActiveAdmin.register BookingStatus do
  menu :parent => "Booking"
  actions :all, :except => [:destroy]

  index :download_links => false do
    column :id
    column :code
    column :name
    column :name_en
  end

 config.filters = false

end
