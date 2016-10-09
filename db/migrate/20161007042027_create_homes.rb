class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.float :price
      t.integer :sqft
      t.text :description
      t.string :line_1
      t.string :line_2
      t.string :city
      t.string :state
      t.string :zip_code
      t.integer :bedrooms
      t.string :bathrooms

      t.timestamps null: false
    end
  end
end
