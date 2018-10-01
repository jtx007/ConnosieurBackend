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

ActiveRecord::Schema.define(version: 2018_10_01_200632) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string "text"
    t.integer "user_id"
    t.integer "post_id"
    t.integer "likes", default: 0
    t.integer "dislikes", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "own_sneakers", force: :cascade do |t|
    t.integer "sneaker_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.integer "user_id"
    t.integer "sneaker_id"
    t.integer "likes", default: 0
    t.integer "dislikes", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sneaker_users", force: :cascade do |t|
    t.integer "user_id"
    t.integer "sneaker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sneakers", force: :cascade do |t|
    t.string "title"
    t.string "category"
    t.string "shoe"
    t.string "release_date"
    t.string "colorway"
    t.string "uuid"
    t.string "brand"
    t.string "style_id"
    t.string "retail_price"
    t.string "market_value"
    t.string "img_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "age"
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatarUrl"
  end

  create_table "want_sneakers", force: :cascade do |t|
    t.integer "sneaker_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
