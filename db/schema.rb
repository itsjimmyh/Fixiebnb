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

ActiveRecord::Schema.define(version: 20140923185648) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "listings", force: true do |t|
    t.integer  "user_id",                                                           null: false
    t.string   "list_title",                                                        null: false
    t.text     "list_desc",  default: "Please describe your ride",                  null: false
    t.string   "frame",      default: "frame",                                      null: false
    t.string   "f_wheel",    default: "regular wheel",                              null: false
    t.string   "r_wheel",    default: "regular wheel",                              null: false
    t.string   "seat",       default: "regular",                                    null: false
    t.string   "handlebars", default: "dropbars",                                   null: false
    t.string   "brakes",     default: "regular",                                    null: false
    t.integer  "daily",      default: 5,                                            null: false
    t.integer  "weekly",     default: 35,                                           null: false
    t.text     "rules",      default: "Please do not purposefully damage the bike", null: false
    t.integer  "deposit",    default: 100,                                          null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "listings", ["user_id"], name: "index_listings_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "username",        null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest", null: false
    t.string   "session_token",   null: false
  end

end
