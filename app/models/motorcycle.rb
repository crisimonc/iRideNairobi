class Motorcycle < ApplicationRecord

  has_many :bookings

	mount_uploader :uploaded_photo, UploadedPhotoUploader

end
