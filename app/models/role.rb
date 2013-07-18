class Role < ActiveRecord::Base
  has_and_belongs_to_many :users, :join_table => :users_roles
  belongs_to :resource, :polymorphic => true
  
  scopify

  attr_accessible :name
  
  #required by ActiveAdmin
  # Active Admin makes educated guesses when displaying objects, this is
  # the list of methods it tries calling in order
  # setting :display_name_methods, [ :display_name,:full_name,:name,username,
  #                                  :login,:title,:email, :to_s ]
  def display_name
  	"#{name}"
  end 

end
