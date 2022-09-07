class Vehiclestable < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicle do |t|
      t.string :model
      t.integer :manufacture_year
      t.string :last_service
      t.string :next_service
      t.boolean :catalytic_converter
      t.boolean :vehicle_insurance
      t.integer :driver_id
      t.integer :garage_id
    end
  end
end
