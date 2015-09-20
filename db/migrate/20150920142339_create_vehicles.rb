class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :name
      t.references :vendor, index: true, foreign_key: true
      t.float :cost
      t.float :weight
      t.float :fal
      t.integer :power_kw
      t.integer :power_hp
      t.integer :battery
      t.float :drive_range
      t.string :type

      t.timestamps null: false
    end
  end
end
