class Motorcycle < ApplicationRecord

  has_many :bookings, :dependent => :destroy
  has_many :reviews, through: :bookings
  mount_uploader :uploaded_photo, UploadedPhotoUploader

end
