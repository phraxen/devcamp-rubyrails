class User < ApplicationRecord
  ############################################################################################
  ## PeterGate Roles                                                                        ##
  ## The :user role is added by default and shouldn't be included in this list.             ##
  ## The :root_admin can access any page regardless of access settings. Use with caution!   ##
  ## The multiple option can be set to true if you need users to have multiple roles.       ##
  petergate(roles: [:admin, :editor], multiple: false)                                      ##
  ############################################################################################ 
 

  # Include default devise modules. Others available are:
  # :confirmable  - users can only access the system after their account has been confirmed by an admin
  # :lockable     - user accounts can be locked
  # :timeoutable  - log user out of application after timeout
  # :trackable    - track information about user (e.g. how many sign-ins, IP addresses, last sign-in time, etc.)
  # :omniauthable - integrate 3rd party logins (e.g. Facebook, Google, etc.)
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates_presence_of :name

  def first_name
    self.name.split.first # self is redundant
  end

  def last_name
    name_split = name.split
    if name_split.count > 1
      name_split.last
    else
      '<mononymous person>'
    end
  end
end
