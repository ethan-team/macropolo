class OfferOwner < ActiveRecord::Base
  attr_accessible :contact_person, :delegation, :email, :fax, :home_page, :mobile, :name_cn, :name_en, :phone, :remark, :sns_other, :sns_qq, :sns_skype, :sns_weichat, :sns_whatapp, :supplier_name
end
