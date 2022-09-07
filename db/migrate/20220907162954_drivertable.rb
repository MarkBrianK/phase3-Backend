class Drivertable < ActiveRecord::Migration[7.0]
  def change
    create_table :drivers do |t|
      t.string :name
      t.integer :licence_number
    end
  end
end
