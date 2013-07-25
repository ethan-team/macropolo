class OfferSource < ActiveRecord::Base
  belongs_to :offer_source_type
  belongs_to :currency_type
  belongs_to :offer
  attr_accessible :offer_code, :original_introduction, :remark, :source_id, :source_uri
  attr_accessible :offer_source_type_id, :currency_type_id, :offer_id
end
