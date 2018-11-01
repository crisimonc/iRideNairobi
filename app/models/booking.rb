class Booking < ApplicationRecord
  belongs_to :motorcycle
  belongs_to :user
  has_many :reviews
end



