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

<<<<<<< HEAD
ActiveRecord::Schema[7.0].define(version: 2023_04_27_163931) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "logo"
    t.string "description"
=======
<<<<<<< HEAD
ActiveRecord::Schema[7.0].define(version: 2023_04_27_164258) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "jobs", force: :cascade do |t|
    t.integer "company_id"
    t.string "title"
    t.string "description"
    t.string "url"
    t.string "location"
    t.boolean "active"
    t.string "salary_range"
=======
ActiveRecord::Schema[7.0].define(version: 2023_04_27_164651) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
>>>>>>> 63e1aa525a55475c38b0ece8618f472f1440eb9a
>>>>>>> 45b35ef3ed2331400ddf1802071ac182a0604c92
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
