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

  # def check_availability
  #  moto = self.motorcycle
  #  all_bookings = moto.bookings

  #  all_bookings.each do |booking|
  #   search_dates = (self.start_date..self.end_date)
  #   booking_dates = (booking.start_date..booking.end_date)

  #   if !(search_dates).overlaps?(booking_dates)
  #     return true
  #   end
  # end

  # end
end



