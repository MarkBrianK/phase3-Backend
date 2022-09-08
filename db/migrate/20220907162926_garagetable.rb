class Garagetable < ActiveRecord::Migration[7.0]
  def change
    create_table :garages do |t|
      t.string :name
      t.string :location
      t.string :mechanic
      t.string :certification_number
    end
  end
end
