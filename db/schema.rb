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

ActiveRecord::Schema.define(version: 20180417123310) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookmarks", force: :cascade do |t|
    t.bigint "users_id"
    t.bigint "series_id"
    t.index ["series_id"], name: "index_bookmarks_on_series_id"
    t.index ["users_id"], name: "index_bookmarks_on_users_id"
  end

  create_table "episodes", force: :cascade do |t|
    t.string "title"
    t.integer "number"
    t.string "synopsis"
    t.bigint "seasons_id"
    t.index ["seasons_id"], name: "index_episodes_on_seasons_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "comment"
    t.integer "rating"
    t.bigint "users_id"
    t.bigint "episodes_id"
    t.index ["episodes_id"], name: "index_reviews_on_episodes_id"
    t.index ["users_id"], name: "index_reviews_on_users_id"
  end

  create_table "seasons", force: :cascade do |t|
    t.integer "number"
    t.date "air_date"
    t.bigint "series_id"
    t.index ["series_id"], name: "index_seasons_on_series_id"
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
  end

  create_table "views", force: :cascade do |t|
    t.bigint "users_id"
    t.bigint "seasons_id"
    t.bigint "series_id"
    t.bigint "episodes_id"
    t.index ["episodes_id"], name: "index_views_on_episodes_id"
    t.index ["seasons_id"], name: "index_views_on_seasons_id"
    t.index ["series_id"], name: "index_views_on_series_id"
    t.index ["users_id"], name: "index_views_on_users_id"
  end

  add_foreign_key "bookmarks", "series"
  add_foreign_key "bookmarks", "users", column: "users_id"
  add_foreign_key "episodes", "seasons", column: "seasons_id"
  add_foreign_key "reviews", "episodes", column: "episodes_id"
  add_foreign_key "reviews", "users", column: "users_id"
  add_foreign_key "seasons", "series"
  add_foreign_key "views", "episodes", column: "episodes_id"
  add_foreign_key "views", "seasons", column: "seasons_id"
  add_foreign_key "views", "series"
  add_foreign_key "views", "users", column: "users_id"
end
