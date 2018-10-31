class AddUploadedPhotoToMotorcycles < ActiveRecord::Migration[5.2]
  def change
    add_column :motorcycles, :uploaded_photo, :string
  end
end
