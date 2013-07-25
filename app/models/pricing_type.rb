class PricingType < ActiveRecord::Base
  has_many :offers
  attr_accessible :code, :name, :name_en
end
