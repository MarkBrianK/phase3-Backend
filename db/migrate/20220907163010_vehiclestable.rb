class Vehiclestable < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicles do |t|
      t.string :model
      t.string :manufacture_year
      t.string :last_service
      t.string :next_service
      t.string :catalytic_converter
      t.string :vehicle_insurance
      t.integer :driver_id
      t.integer :garage_id
    end
  end
end
