class OfferRegion < ActiveRecord::Base
  #has_many :offer
  belongs_to :parent, :class_name => "OfferRegion"

  attr_accessible :code, :latitude, :longitude, :name, :name_en, :parent_id

  #required by ActiveAdmin
  # Active Admin makes educated guesses when displaying objects, this is
  # the list of methods it tries calling in order
  # setting :display_name_methods, [ :display_name,:full_name,:name,username,
  #                                  :login,:title,:email, :to_s ]
  def display_name
  	"#{name} , #{name_en}"
  end 
end
