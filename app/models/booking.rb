class Booking < ApplicationRecord
  def guest_name
    user = User.find(self.user_id)
    full_name = user.first_name + " " + user.last_name
  end
end
