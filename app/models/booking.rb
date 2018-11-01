class Booking < ApplicationRecord
  belongs_to :motorcycle
  belongs_to :user
  has_many :reviews

  def self.user_bookings(user)
  	Booking.where(user: user)
  end
end



