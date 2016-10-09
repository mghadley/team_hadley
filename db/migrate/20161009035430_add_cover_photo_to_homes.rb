class AddCoverPhotoToHomes < ActiveRecord::Migration
  def change
    add_column :homes, :cover_photo, :string
  end
end
