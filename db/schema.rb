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

ActiveRecord::Schema.define(version: 2022_04_06_180611) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "hstore"
  enable_extension "plpgsql"

  create_table "cards", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "character_id", null: false
    t.integer "rarity"
    t.integer "variant"
    t.boolean "for_sale"
    t.integer "sale_price"
    t.string "unique_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["character_id"], name: "index_cards_on_character_id"
    t.index ["user_id"], name: "index_cards_on_user_id"
  end

  create_table "characters", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "link"
    t.string "image_url"
    t.string "image_url2"
    t.string "image_url3"
    t.string "image_url4"
    t.string "title"
    t.string "title2"
    t.string "title3"
    t.string "title4"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.bigint "card_id", null: false
    t.integer "from_id"
    t.integer "to_id"
    t.integer "sale_price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["card_id"], name: "index_transactions_on_card_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "password_digest"
    t.integer "credits"
    t.hstore "packs"
    t.string "last_log_in"
    t.integer "streak"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "cards", "characters"
  add_foreign_key "cards", "users"
  add_foreign_key "transactions", "cards"
end
