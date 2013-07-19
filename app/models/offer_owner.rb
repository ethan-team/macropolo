class OfferOwner < ActiveRecord::Base
  has_many :offer

  attr_accessible :contact_person, :delegation, :email, :fax, :home_page, :mobile, :name_cn, :name_en, :phone, :remark, :sns_other, :sns_qq, :sns_skype, :sns_weichat, :sns_whatapp, :supplier_name

  #required by ActiveAdmin
  def display_name
    "#{name_cn} , #{name_en}"
  end
end
