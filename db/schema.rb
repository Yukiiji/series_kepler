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

ActiveRecord::Schema.define(version: 20180515090245) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookmarks", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "serie_id"
    t.index ["serie_id"], name: "index_bookmarks_on_serie_id"
    t.index ["user_id"], name: "index_bookmarks_on_user_id"
  end

  create_table "episodes", force: :cascade do |t|
    t.string "title"
    t.integer "number"
    t.string "synopsis"
    t.bigint "season_id"
    t.index ["season_id"], name: "index_episodes_on_season_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "comment"
    t.integer "rating"
    t.bigint "user_id"
    t.bigint "episode_id"
    t.index ["episode_id"], name: "index_reviews_on_episode_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "seasons", force: :cascade do |t|
    t.integer "number"
    t.date "air_date"
    t.bigint "serie_id"
    t.index ["serie_id"], name: "index_seasons_on_serie_id"
  end

  create_table "series", force: :cascade do |t|
    t.string "name"
    t.date "air_date"
    t.string "creator"
    t.string "synopsis"
    t.string "picture"
  end

  create_table "users", force: :cascade do |t|
    t.string "mail"
    t.string "nickname"
    t.string "password"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "views", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "season_id"
    t.bigint "serie_id"
    t.bigint "episode_id"
    t.index ["episode_id"], name: "index_views_on_episode_id"
    t.index ["season_id"], name: "index_views_on_season_id"
    t.index ["serie_id"], name: "index_views_on_serie_id"
    t.index ["user_id"], name: "index_views_on_user_id"
  end

  add_foreign_key "bookmarks", "series", column: "serie_id"
  add_foreign_key "bookmarks", "users"
  add_foreign_key "episodes", "seasons"
  add_foreign_key "reviews", "episodes"
  add_foreign_key "reviews", "users"
  add_foreign_key "seasons", "series", column: "serie_id"
  add_foreign_key "views", "episodes"
  add_foreign_key "views", "seasons"
  add_foreign_key "views", "series", column: "serie_id"
  add_foreign_key "views", "users"
end
