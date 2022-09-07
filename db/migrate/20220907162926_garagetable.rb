class Garagetable < ActiveRecord::Migration[7.0]
  def change
    create_table :garage do |t|
      t.string :name
      t.string :location
      t.string :mechanic
      t.integer :certification_number
    end
  end
end
