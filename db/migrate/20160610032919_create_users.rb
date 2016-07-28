class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :phone
      t.boolean :admin, default: false, null: false

      t.timestamps null: false
    end
  end
end
