class Voucher < ActiveRecord::Base
  belongs_to :booking
  belongs_to :user
  attr_accessible :amount_in_rmb, :amount_used_in_rmb, :expired_date, :name
  attr_accessible :booking_id, :user_id
end
