# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_09_07_163010) do
  create_table "drivers", force: :cascade do |t|
    t.string "name"
    t.integer "licence_number"
  end

  create_table "garages", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "mechanic"
    t.integer "certification_number"
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "model"
    t.string "manufacture_year"
    t.string "last_service"
    t.string "next_service"
    t.string "catalytic_converter"
    t.string "vehicle_insurance"
    t.integer "driver_id"
    t.integer "garage_id"
    t.string "vehicle_registration"
  end

end
