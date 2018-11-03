class Review < ApplicationRecord
  belongs_to :booking

  validates :booking, :content, :stars, presence: true
end
