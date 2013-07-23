ActiveAdmin.register BookingComment do
  menu :parent => "Booking"  

    actions :all, :except => [:destroy]

  index :download_links => false do
    column :id
    column :booking
    column :user
    column :body
  end
end
