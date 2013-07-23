class BookingHistory < ActiveRecord::Base
  belongs_to :booking_status
  belongs_to :booking
  attr_accessible :booking, :remark
  attr_accessible :booking_status_id, :booking_id
end
