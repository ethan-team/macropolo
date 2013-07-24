class BookingStatus < ActiveRecord::Base
  has_many :bookings
  attr_accessible :code, :name, :name_en
end
