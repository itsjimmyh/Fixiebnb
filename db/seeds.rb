# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!( username: "username", password: "123456" )
User.create!( username: "eric", password: "123456" )
User.create!( username: "mike", password: "123456" )
User.create!( username: "rob", password: "123456" )
User.create!( username: "jeffrey", password: "123456" )
User.create!( username: "yusef", password: "123456" )
User.create!( username: "james", password: "123456" )
User.create!( username: "nguyen", password: "123456" )

Listing.create!(
  user_id: 1,
  list_title: "jimmy's bianchi concept",
  list_desc: "Please describe your ride",
  price: 25,
  latitude: 37.777184,
  longitude: -122.414215,
  address: "1256 Mission Street, San Francisco",
  city: "San Francisco",
  zip: 94103
)

Listing.create!(
  user_id: 2,
  list_title: "eric's njs",
  list_desc: "Please describe your ride",
  price: 25,
  latitude: 37.782043,
  longitude: -122.408378,
  address: "471 Jessie St, San Francisco",
  city: "San Francisco",
  zip: 94103
)

Listing.create!(
  user_id: 3,
  list_title: "mike's sweet ride",
  list_desc: "Please describe your ride",
  price: 25,
  latitude: 37.782416,
  longitude: -122.403443,
  address: "837 Howard St, San Francisco",
  city: "San Francisco",
  zip: 94103
)

Listing.create!(
  user_id: 4,
  list_title: "robs's concept",
  list_desc: "Please describe your ride",
  price: 25,
  # latitude: 37.784722,
  # longitude: -122.443397,
  address: "2601 Sutter St, San Francisco",
  city: "San Francisco",
  zip: 94115
)

Listing.create!(
  user_id: 5,
  list_title: "jeffrey's concept",
  list_desc: "Please describe your ride",
  price: 25,
  # latitude: 37.786554,
  # longitude: -122.417305,
  address: "822 Geary St, San Francisco",
  city: "San Francisco",
  zip: 94109
)

Listing.create!(
  user_id: 6,
  list_title: "yusef's concept",
  list_desc: "Please describe your ride",
  price: 25,
  # latitude: 37.781661,
  # longitude: -122.411579,
  address: "1061 Market St, San Francisco, CA",
  city: "San Francisco",
  zip: 94103
)

Listing.create!(
  user_id: 1,
  list_title: "yusef's concept",
  list_desc: "Please describe your ride",
  price: 25,
  # latitude: 37.781661,
  # longitude: -122.411579,
    address: "110, Taiwan, Taipei City, Xinyi District",
  city: "Taipei City",
  zip: 99999
)

Image.create!( listing_id: 1, url: "http://www.pedalroom.com/p/2005-bianchi-pista-concept-6184_1.jpg")
Image.create!( listing_id: 1, url: "http://www.pedalroom.com/p/2005-bianchi-pista-concept-6184_1.jpg")
Image.create!( listing_id: 1, url: "http://www.pedalroom.com/p/2005-bianchi-pista-concept-6184_1.jpg")

Image.create!(
  listing_id: 1,
  url: "http://www.pedalroom.com/p/2005-bianchi-pista-concept-6184_1.jpg"
)

Image.create!(
  listing_id: 2,
  url: "http://www.pedalroom.com/p/keirin-style-njs-track-bike-3874_1.jpg"
)

Image.create!(
  listing_id: 3,
  url: "http://www.infobarrel.com/media/image/50497.png"
)

Image.create!(
  listing_id: 4,
  url: "http://www.pedalroom.com/p/cinelli-mash-parallax-2014-19265_1.jpg"
)

Image.create!(
  listing_id: 5,
  url: "http://38.media.tumblr.com/tumblr_lztf6igro61qzlu6jo1_500.png"
)

Image.create!(
  listing_id: 6,
  url: "http://www.infobarrel.com/media/image/50063.png"
)
