class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :offer
  belongs_to :booking_status
  has_many :booking_history
  has_many :booking_comment
  attr_accessible :total_payment_in_rmb, :guest_contact_info, :guest_extra_info, :guest_name
  attr_accessible :checkin_date, :checkout_date, :guests_count, :kids_count
  attr_accessible :user_id, :offer_id, :booking_status_id

    #required by ActiveAdmin
  def display_name
    user = User.find_by_id(user_id) 
    offer = Offer.find_by_id(offer_id)

    user_name = "unknown"
    user_name = user.name if user
    offer_name = "unknown"
    offer_name = offer.name if offer   

    "#{user_name} , #{offer_name}"
  end
end
