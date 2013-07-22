class OfferType < ActiveRecord::Base
  has_many :offer

  attr_accessible :code, :name, :name_en

  #required by ActiveAdmin
  def display_name
    "#{name} , #{name_en}"
  end

end
