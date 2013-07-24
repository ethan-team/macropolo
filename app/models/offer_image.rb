class OfferImage < ActiveRecord::Base
  belongs_to :offer
  attr_accessible :height, :is_primary, :label, :preview_uri, :seq, :uri, :width
  attr_accessible :offer_id
end
