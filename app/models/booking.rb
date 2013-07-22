class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :offer
  belongs_to :booking_status
  has_many :booking_history
  attr_accessible :total_payment_in_rmb, :guest_contact_info, :guest_extra_info, :guest_name
  attr_accessible :user_id, :offer_id, :booking_status_id
end
