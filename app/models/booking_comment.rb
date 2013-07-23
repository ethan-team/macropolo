class BookingComment < ActiveRecord::Base
  belongs_to :booking
  belongs_to :user
  attr_accessible :body
  attr_accessible :booking_id, :user_id 
end
