class Motorcycle < ApplicationRecord

  has_many :bookings, :dependent => :destroy
  has_many :reviews, through: :bookings
  mount_uploader :uploaded_photo, UploadedPhotoUploader

  validates :name, :motor_type, :description, :price, presence: true


end
