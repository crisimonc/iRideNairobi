class Booking < ApplicationRecord
# before_validation (on: :create) do
#   check_availability
# end

  belongs_to :motorcycle
  belongs_to :user
  has_many :reviews

  def self.user_bookings(user)
  	Booking.where(user: user)
  end


  # end
end



