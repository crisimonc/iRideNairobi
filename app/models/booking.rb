class Booking < ApplicationRecord
  belongs_to :motorcycle
  belongs_to :user
  has_many :reviews

  def self.user_bookings(user)
  	Booking.where(user: user)
  end

  # def self.check_availability(a, b)
    # @listed_motorcyles = []
    #   Booking.all.each do |booking|
    #   	c = booking.start_date
    #   	d = booking.end_date
    #   end
  # end
end



