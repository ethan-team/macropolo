ActiveAdmin.register BookingStatus do
  menu :label => "const Booking Status", :parent => "Booking"
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
