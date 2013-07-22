class OfferSourceCurrencyType < ActiveRecord::Base
  belongs_to :offer_source_currency_type
  attr_accessible :code, :name
end
