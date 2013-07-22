class OfferSourceCurrencyType < ActiveRecord::Base
  has_many :offer_source_source
  attr_accessible :code, :name
end
