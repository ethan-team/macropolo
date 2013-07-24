ActiveAdmin.register Booking do
	menu :parent => "Booking"
	actions :all, :except => [:destroy]

    index :download_links => false do
        column :id
        column :user
        column :offer
        column :booking_status
        column :guest_name
        column :guest_contact_info
        column :guest_extra_info
        column :total_payment_in_rmb
    end

    config.filters = false  
end
