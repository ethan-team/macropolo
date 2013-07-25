class CurrencyToRmbRate < ActiveRecord::Base
  belongs_to :currency_type
  attr_accessible :rate, :reviewed
  attr_accessible :currency_type_id
end
