class OfferOwner < ActiveRecord::Base
  has_many :offers

  attr_accessible :contact_person, :delegation, :email, :fax, :home_page, :mobile, :name, :name_en, :phone, :remark, :sns_other, :sns_qq, :sns_skype, :sns_weichat, :sns_whatapp, :supplier_name

  #required by ActiveAdmin
  def display_name
    "#{name} , #{name_en}"
  end
end
