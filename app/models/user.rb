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
  attr_accessible :name, :email, :mobile, :password, :password_confirmation, :remember_me

  has_and_belongs_to_many :roles, :join_table => :users_roles
  has_many :vouchers
  has_many :bookings

  def is_admin?
    # self.email && ENV['ADMIN_EMAILS'].to_s.include?(self.email)
    #self.email
    #TODO:  Yizhen, the code seems too heavy to me, figure out a way to make it better
    #debugger

    @admin_roles ||= YAML.load(ENV['ROLES_ADMIN'])
    if !@admin_roles
      return true     #we are wide open if the admin_roles are not defined
    end

    if !self.roles
      return false
    end

    self.roles.each do |r|
      @admin_roles.each do |adm_name| 
        if r.name == adm_name
          return true
        end  
      end
    end 

    false
  end

end