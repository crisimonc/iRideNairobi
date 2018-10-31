class Motorcycle < ApplicationRecord
	mount_uploader :uploaded_photo, UploadedPhotoUploader
end
