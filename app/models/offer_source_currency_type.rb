class OfferSourceCurrencyType < ActiveRecord::Base
  has_many :offer_sources
  has_many :currency_to_rmb_rates
  attr_accessible :code, :name
end
