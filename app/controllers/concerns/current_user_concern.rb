module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    # overload the internal "current_user" method

    # super || { first_name: "Guest", last_name: "User" } # won't work, because: https://stackoverflow.com/questions/14421218/when-should-i-use-an-openstruct-instead-of-a-hash

    super || guest_user
  end

  private

  def guest_user
    guest = GuestUser.new

    guest.name = 'Guest User'
    guest.first_name = 'Guest'
    guest.last_name = 'User'
    guest.email = 'guest@example.com'

    guest # return the full object
  end
end