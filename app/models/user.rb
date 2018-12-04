class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable  - users can only access the system after their account has been confirmed by an admin
  # :lockable     - user accounts can be locked
  # :timeoutable  - log user out of application after timeout
  # :trackable    - track information about user (e.g. how many sign-ins, IP addresses, last sign-in time, etc.)
  # :omniauthable - integrate 3rd party logins (e.g. Facebook, Google, etc.)
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
