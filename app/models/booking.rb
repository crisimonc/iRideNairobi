class Booking < ApplicationRecord
  belongs_to :motorcycle
  belongs_to :user
  has_many :reviews

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?


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



