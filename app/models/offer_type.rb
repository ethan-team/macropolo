class OfferType < ActiveRecord::Base
  has_many :offer

  attr_accessible :code, :name_cn, :name_en

  #required by ActiveAdmin
  def display_name
    "#{name_cn} , #{name_en}"
  end

end
