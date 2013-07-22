class CurrencyToRmbRate < ActiveRecord::Base
  belongs_to :offer_source_currency_type
  attr_accessible :rate, :reviewed
  attr_accessible :offer_source_currency_type_id
end
