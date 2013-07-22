class BookingHistory < ActiveRecord::Base
  belongs_to :booking_status
  belongs_to :booking
  attr_accessible :booking, :remark
end
