# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  list_title :string(255)      not null
#  list_desc  :text             default("Please describe your ride"), not null
#  price      :integer          default(5), not null
#  lat        :float
#  long       :float
#  street     :string(255)      not null
#  city       :string(255)      not null
#  state      :string(255)
#  zip        :integer
#  deposit    :integer          default(100), not null
#  created_at :datetime
#  updated_at :datetime

User.create!( username: "username", password: "123456")
User.create!( username: "eric", password: "123456")
User.create!( username: "mike", password: "123456")

Listing.create!(
  user_id: "1",
  list_title: "jimmy's bianchi pista concept",
  list_desc: "Please describe your ride",
  price: 25,
  lat: 37.781661,
  long: -122.411579,
  street: "1061 Market St",
  city: "San Francisco",
  state: "CA",
  zip: 94103
)

Listing.create!(
  user_id: "2",
  list_title: "eric's concept",
  list_desc: "Please describe your ride",
  price: 25,
  lat: 37.781661,
  long: -122.411579,
  street: "1061 Market St",
  city: "San Francisco",
  state: "CA",
  zip: 94103
)

Listing.create!(
  user_id: "3",
  list_title: "mike's concept",
  list_desc: "Please describe your ride",
  price: 25,
  lat: 37.781661,
  long: -122.411579,
  street: "1061 Market St",
  city: "San Francisco",
  state: "CA",
  zip: 94103
)
