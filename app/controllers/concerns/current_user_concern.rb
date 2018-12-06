module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    # overload the internal "current_user" method

    # super || { first_name: "Guest", last_name: "User" } # won't work, because: https://stackoverflow.com/questions/14421218/when-should-i-use-an-openstruct-instead-of-a-hash

    super || guest_user
  end

  private

  def guest_user
    OpenStruct.new(name: 'Guest User',
                   first_name: 'Guest',
                   last_name: 'User',
                   email: 'guest@example.com')
  end
end