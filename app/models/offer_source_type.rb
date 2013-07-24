class OfferSourceType < ActiveRecord::Base
  has_many :offers
  attr_accessible :code, :name
end
