# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  # create_table "listings", force: true do |t|
  #   t.integer  "user_id",                                                           null: false
  #   t.string   "list_title",                                                        null: false
  #   t.text     "list_desc",  default: "Please describe your ride",                  null: false
  #   t.string   "frame",      default: "frame",                                      null: false
  #   t.string   "f_wheel",    default: "regular wheel",                              null: false
  #   t.string   "r_wheel",    default: "regular wheel",                              null: false
  #   t.string   "seat",       default: "regular",                                    null: false
  #   t.string   "handlebars", default: "dropbars",                                   null: false
  #   t.string   "brakes",     default: "regular",                                    null: false
  #   t.integer  "daily",      default: 5,                                            null: false
  #   t.integer  "weekly",     default: 35,                                           null: false
  #   t.text     "rules",      default: "Please do not purposefully damage the bike", null: false
  #   t.integer  "deposit",    default: 100,                                          null: false
  #   t.datetime "created_at"
  #   t.datetime "updated_at"
  # end
  #
  # add_index "listings", ["user_id"], name: "index_listings_on_user_id", using: :btree
  #
  # create_table "users", force: true do |t|
  #   t.string   "username",        null: false
  #   t.datetime "created_at"
  #   t.datetime "updated_at"
  #   t.string   "password_digest", null: false
  #   t.string   "session_token",   null: false
  # end

User.create!( username: "jimmy", password: "123456")
User.create!( username: "eric", password: "123456")
User.create!( username: "mike", password: "123456")

Listing.create!(
  user_id: "1",
  list_title: "jimmy's bianchi pista concept",
  list_desc: "Please describe your ride",
  frame: "bianchi pista concept",
  f_wheel: "hed 3",
  r_wheel: "deep V",
  seat: "san marco regal",
  handlebars: "bullhorns",
  brakes: "none",
  daily: 20,
  weekly: 100,
  rules: "Please be careful when riding",
  deposit: 450
)

Listing.create!(
  user_id: "2",
  list_title: "eric's concept",
  list_desc: "Please describe your ride",
  frame: "pista concept",
  f_wheel: "aerospoke",
  r_wheel: "deep V",
  seat: "san marco regal",
  handlebars: "bullhorns",
  brakes: "none",
  daily: 20,
  weekly: 100,
  rules: "Please be careful when riding",
  deposit: 450
)

Listing.create!(
  user_id: "3",
  list_title: "mike's bike",
  list_desc: "Please describe your ride",
  frame: "some bike",
  f_wheel: "deep V",
  r_wheel: "deep V",
  seat: "brooks",
  handlebars: "dropbars",
  brakes: "yes",
  daily: 10,
  weekly: 50,
  rules: "Please be careful when riding",
  deposit: 350
)
