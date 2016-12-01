class AddPoolToHomes < ActiveRecord::Migration
  def change
    add_column :homes, :pool, :boolean, null: false, default: false
  end
end
