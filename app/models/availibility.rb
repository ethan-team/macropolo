class Availibility < ActiveRecord::Base
  belongs_to :offer
  belongs_to :availibility_type
  attr_accessible :date, :price_entitiy_id
  attr_accessible :offer_id, :availibility_type_id
end
