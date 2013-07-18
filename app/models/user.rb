class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  #attr_accessible :role_ids, :as => :admin
  attr_accessible :role_ids          #TODO Yizhen potential risk to exposed role without restriction,  open it for now for activeadmin
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me

  #has_many :roles

  def is_admin?
    # self.email && ENV['ADMIN_EMAILS'].to_s.include?(self.email)
    #TODO:  Yizhen, use CanCan to determine if it is admin
    self.email
  end

end
