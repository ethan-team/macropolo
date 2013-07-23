class OfferReview < ActiveRecord::Base
  belongs_to :offer
  belongs_to :user
  belongs_to :booking
  attr_accessible :body, :rating
  attr_accessible :offer_id, :user_id, :booking_id 
end
