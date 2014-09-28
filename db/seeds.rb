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
User.create!( username: "jimmy", password: "123456" )
User.create!( username: "fixed girl taiwan", password: "123456" )

Listing.create!(
  user_id: 1,
  list_title: "jimmy's concept",
  list_desc: "Hello fellow enthusiast.  This is my HLF Folk NJS Fixed Gear  It was built with the rarest NJS parts I coudl find.  Comfy San Marco saddle.  Nitto RB-021 Bullhorns.  None of that overdone crap.  Pure riding enthusiast.",
  price: 40,
  latitude: 37.777184,
  longitude: -122.414215,
  address: "1256 Mission Street, San Francisco",
  city: "San Francisco",
  zip: 94103
)

Listing.create!(
  user_id: 2,
  list_title: "eric's njs",
  list_desc: "This is for the purist of enthusiasts.  You know what you're looking at.  This 54-14 ratio will definitely give you a workout in the city",
  price: 30,
  latitude: 37.782043,
  longitude: -122.408378,
  address: "471 Jessie St, San Francisco",
  city: "San Francisco",
  zip: 94103
)

Listing.create!(
  user_id: 3,
  list_title: "mike's sweet ride",
  list_desc: "This is my sweet ride.  Take it around the neighborhood and enjoy your time in SF",
  price: 20,
  latitude: 37.782416,
  longitude: -122.403443,
  address: "837 Howard St, San Francisco",
  city: "San Francisco",
  zip: 94103
)

Listing.create!(
  user_id: 4,
  list_title: "robs's concept",
  list_desc: "Cinelli Mash.  Great commuter and all around city exploration.  Meet me up and take her out for a spin",
  price: 15,
  address: "2601 Sutter St, San Francisco",
  city: "San Francisco",
  zip: 94115
)

Listing.create!(
  user_id: 5,
  list_title: "jeffrey's concept",
  list_desc: "Soft Ride.  Incredibly light.  Performance and aesthetics in mind.  Look no further.",
  price: 45,
  address: "822 Geary St, San Francisco",
  city: "San Francisco",
  zip: 94109
)

Listing.create!(
  user_id: 6,
  list_title: "yusef's concept",
  list_desc: "My sweet green baby.  I've only been here in SF for a short little bit, I'm still exploring on foot a lot, so don't be shy.  Make an appointment and explore SF while I'm busy.",
  price: 20,
  address: "1061 Market St, San Francisco, CA",
  city: "San Francisco",
  zip: 94103
)

Listing.create!(
  user_id: 7,
  list_title: "yusef's concept",
  list_desc: "Taiwan Baby.  Just my spare bike I have lying around.  Come rent it out and join us on our weekly night ride",
  price: 25,
  address: "110 Taiwan, Taipei City, Xinyi District",
  city: "Taipei City",
  zip: 99999
)

Listing.create!(
  user_id: 8,
  list_title: "jimmy's sprinter",
  list_desc: "Busy at work.  Rent this guy out and take him for a breather.  Can't have such a beaut' waste away hanging on the wall",
  price: 30,
  address: "420 20th Ave, San Francisco, CA",
  city: "San Francisco",
  zip: 94121
)

Listing.create!(
  user_id: 9,
  list_title: "Woof Jakarta",
  list_desc: "Got a modeling gig, so take care of my baby for a bit will ya?",
  price: 80,
  address: "96 Emei St, Wanhua District, Taipei City, Taiwan 108",
  city: "Taipei City",
  zip: 99999
)

Image.create!( listing_id: 1, url: "http://i.imgur.com/FLs46Vs.jpg" )
Image.create!( listing_id: 1, url: "http://i.imgur.com/HCdeU3z.jpg?1?3656" )
Image.create!( listing_id: 1, url: "http://i.imgur.com/nQZfQaU.jpg" )

Image.create!( listing_id: 2, url: "http://i.imgur.com/r5jWeU7.jpg?1?1382" )
Image.create!( listing_id: 2, url: "http://i.imgur.com/vAww9aX.jpg?1?6623" )
Image.create!( listing_id: 2, url: "http://i.imgur.com/5wYwjSk.jpg?1?8754" )

Image.create!( listing_id: 3, url: "http://i.imgur.com/ddtfH0k.jpg?1?5753" )
Image.create!( listing_id: 3, url: "http://i.imgur.com/68Z6XLm.jpg?1?1228" )
Image.create!( listing_id: 3, url: "http://i.imgur.com/iK1imFs.jpg" )

Image.create!( listing_id: 4, url: "http://i.imgur.com/zandDwt.jpg" )
Image.create!( listing_id: 4, url: "http://i.imgur.com/cSF5wRy.jpg?1?4195" )
Image.create!( listing_id: 4, url: "http://i.imgur.com/7zddn1u.jpg" )

Image.create!( listing_id: 5, url: "http://i.imgur.com/SMlkDqj.jpg?1?3750" )
Image.create!( listing_id: 5, url: "http://i.imgur.com/0EGyl0B.jpg?1?1068" )
Image.create!( listing_id: 5, url: "http://i.imgur.com/hpQmPUd.jpg?1?3486" )

Image.create!( listing_id: 6, url: "http://i.imgur.com/HpRqD1v.png?1?4023" )
Image.create!( listing_id: 6, url: "http://i.imgur.com/HpRqD1v.png?1?4023" )
Image.create!( listing_id: 6, url: "http://i.imgur.com/HpRqD1v.png?1?4023" )

Image.create!( listing_id: 7, url: "http://i.imgur.com/y91TBGc.jpg?1?9907" )
Image.create!( listing_id: 7, url: "http://i.imgur.com/a1zbCvB.jpg?1?5888" )
Image.create!( listing_id: 7, url: "http://i.imgur.com/R29s96D.jpg?1?3593" )

Image.create!( listing_id: 8, url: "http://i.imgur.com/mWXfpk4.jpg" )
Image.create!( listing_id: 8, url: "http://i.imgur.com/3nRf9bi.jpg" )
Image.create!( listing_id: 8, url: "http://i.imgur.com/qjnmm9o.jpg" )

Image.create!( listing_id: 9, url: "http://i.imgur.com/GxDFoWq.jpg?1?4518" )
Image.create!( listing_id: 9, url: "http://i.imgur.com/eGlvOz0.jpg?1?5818" )
Image.create!( listing_id: 9, url: "http://i.imgur.com/xaecGwP.jpg?1?6323" )
