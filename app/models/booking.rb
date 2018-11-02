class Booking < ApplicationRecord
  belongs_to :motorcycle
  belongs_to :user
  has_many :reviews

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?


  def self.user_bookings(user)
  	Booking.where(user: user)
  end
end



