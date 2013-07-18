class OfferRegion < ActiveRecord::Base
  belongs_to :parent, :class_name => "OfferRegion"

  attr_accessible :code, :latitude, :longitude, :name_cn, :name_en, :parent_id
end
