# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_02_01_052546) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cafes", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "roaster_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rating_cafes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "cafe_id"
    t.integer "rating"
    t.text "review"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roaster_ratings", force: :cascade do |t|
    t.integer "user_id"
    t.integer "roaster_id"
    t.integer "rating"
    t.text "review"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roasters", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.string "city"
    t.string "suburb"
    t.text "photo_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "password_digest"
    t.boolean "admin"
  end

end
