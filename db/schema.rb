# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140928172131) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "images", force: true do |t|
    t.integer  "listing_id", null: false
    t.string   "url",        null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "images", ["listing_id"], name: "index_images_on_listing_id", using: :btree

  create_table "listings", force: true do |t|
    t.integer  "user_id",                                          null: false
    t.string   "list_title",                                       null: false
    t.text     "list_desc",  default: "Please describe your ride", null: false
    t.integer  "price",      default: 5,                           null: false
    t.float    "latitude"
    t.float    "longitude"
    t.string   "address",                                          null: false
    t.string   "city",       default: "San Francisco",             null: false
    t.integer  "zip",        default: 99999,                       null: false
    t.integer  "deposit",    default: 100,                         null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "listings", ["latitude"], name: "index_listings_on_latitude", using: :btree
  add_index "listings", ["longitude"], name: "index_listings_on_longitude", using: :btree
  add_index "listings", ["user_id"], name: "index_listings_on_user_id", using: :btree

  create_table "requests", force: true do |t|
    t.integer  "user_id",                        null: false
    t.integer  "listing_id",                     null: false
    t.date     "start_date",                     null: false
    t.date     "end_date",                       null: false
    t.string   "status",     default: "PENDING", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "requests", ["end_date"], name: "index_requests_on_end_date", using: :btree
  add_index "requests", ["listing_id"], name: "index_requests_on_listing_id", using: :btree
  add_index "requests", ["start_date"], name: "index_requests_on_start_date", using: :btree
  add_index "requests", ["user_id"], name: "index_requests_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "username",        null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest", null: false
    t.string   "session_token",   null: false
  end

end
