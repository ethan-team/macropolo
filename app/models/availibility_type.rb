class AvailibilityType < ActiveRecord::Base
  has_many :availibilities
  attr_accessible :code, :name, :name_en
end
