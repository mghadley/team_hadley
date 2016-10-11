class AddPhotosToHomes < ActiveRecord::Migration
  def change
    add_column :homes, :photos, :text, array: true, default: []
  end
end
