ActiveAdmin.register BookingHistory do
	menu :parent => "Booking"
  	actions :all, :except => [:destroy]
end
