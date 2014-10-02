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
User.create!( username: "richard", password: "123456" )
User.create!( username: "christine", password: "123456" )
User.create!( username: "andrew", password: "123456" )
User.create!( username: "yen", password: "123456" )
User.create!( username: "jessica", password: "123456" )
User.create!( username: "amy", password: "123456" )
User.create!( username: "julie", password: "123456" )

Listing.create!(
  user_id: 1,
  list_title: "guests concept",
  list_desc: "Hello fellow enthusiast.  This is my 8Bar Fixed Gear.  It's my sweet blue baby that I coast around town.  Great for sight-seeing in SF.",
  price: 40,
  latitude: 37.777184,
  longitude: -122.414215,
  address: "1256 Mission Street, San Francisco",
  city: "San Francisco",
  zip: 94103
)

Listing.create!(
  user_id: 2,
  list_title: "eric's get-a-round",
  list_desc: "This is for the minimalists.  This gear ratio will definitely give you a pleasant ride in the city",
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
  list_title: "robs's bomber",
  list_desc: "Leader Frame.  Great commuter and all around city exploration.  Meet me up and take her out for a spin",
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
  list_title: "yusef's machine",
  list_desc: "This baby is sure to turn heads.  I've only been here in SF for a short little bit, I'm still exploring on foot a lot, so don't be shy.  Make an appointment and explore SF while I'm busy.",
  price: 20,
  address: "1061 Market St, San Francisco, CA",
  city: "San Francisco",
  zip: 94103
)

Listing.create!(
  user_id: 7,
  list_title: "Roxy's spare",
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

Listing.create!(
  user_id: 10,
  list_title: "Richard's Steel",
  list_desc: "The sturdiest of sturdy.  Feel free to bomb hills, skids, supermans, whatever",
  price: 20,
  address: "2620 Mauricia Ave, Santa Clara, CA",
  city: "Santa Clara",
  zip: 95051
)

Listing.create!(
  user_id: 11,
  list_title: "Christine's Campy",
  list_desc: "Hello.  This is my spare bike.  I haven't had the time to go on rides because of fashion school.  Please enjoy your time around SJ",
  price: 50,
  address: "2 N Market St, San Jose, CA",
  city: "San Jose",
  zip: 95113
)

Listing.create!(
  user_id: 12,
  list_title: "Andrew's Ride",
  list_desc: "Hello.  This is my spare bike.  Been busy traveling to LA for work.  Hanging on the wall.  Take it out for some exercise!",
  price: 30,
  address: "745 Dubanski Dr, San Jose, CA",
  city: "San Jose",
  zip: 95113
)

Listing.create!(
  user_id: 13,
  list_title: "Yen's Silver Ride",
  list_desc: "Hello.  This is my spare bike.  Been busy traveling, so this has been hanging on the wall.  Take it out for some exercise!",
  price: 30,
  address: "12220 Venice Blvd, Los Angeles",
  city: "Los Angelos",
  zip: 90066
)

Listing.create!(
  user_id: 14,
  list_title: "Jessica's Ride",
  list_desc: "Hello.  This is my spare bike.  Been busy traveling to LA for work.  Hanging on the wall.  Take it out for some exercise!",
  price: 30,
  address: "1 Washington Sq, San Jose, CA",
  city: "San Jose",
  zip: 95192
)

Listing.create!(
  user_id: 15,
  list_title: "Amy's Ride",
  list_desc: "Hello.  This is my spare bike.  Been busy traveling to LA for work.  Hanging on the wall.  Take it out for some exercise!",
  price: 30,
  address: "19620 Stevens Creek Blvd #180, Cupertino, CA",
  city: "San Jose",
  zip: 95014
)

Listing.create!(
  user_id: 16,
  list_title: "Julie's Ride",
  list_desc: "Hello.  This is my spare bike.  Been busy traveling to LA for work.  Hanging on the wall.  Take it out for some exercise!",
  price: 30,
  address: "940 Great Mall Dr, Milpitas, CA",
  city: "Milpitas",
  zip: 95035
)

Listing.create!(
  user_id: 1,
  list_title: "guests second concept",
  list_desc: "Too many bikes, come take this one away and go on a ride!",
  price: 45,
  address: "3251 20th Ave, San Francisco, CA",
  city: "San Francisco",
  zip: 94132
)

Listing.create!(
  user_id: 9,
  list_title: "jimmy's spares",
  list_desc: "Too many bikes, come take this one away and go on a ride!",
  price: 55,
  address: "3667 Las Vegas Blvd S, Las Vegas",
  city: "Las Vegas",
  zip: 89109
)

Listing.create!(
  user_id: 9,
  list_title: "jimmy's second concept",
  list_desc: "Too many bikes, come take this one away and go on a ride!",
  price: 65,
  address: "3121 S Las Vegas Blvd, Las Vegas",
  city: "Las Vegas",
  zip: 89109
)

Listing.create!(
  user_id: 9,
  list_title: "jimmy's third concept",
  list_desc: "Too many bikes, come take this one away and go on a ride!",
  price: 85,
  address: "1454 46th Ave, San Francisco",
  city: "Las Vegas",
  zip: 94122
)

Listing.create!(
  user_id: 9,
  list_title: "jimmy's fourth concept",
  list_desc: "Too many bikes, come take this one away and go on a ride!",
  price: 85,
  address: "2257 Market St, San Francisco, CA",
  city: "San Francisco",
  zip: 94114
)

Listing.create!(
  user_id: 9,
  list_title: "jimmy's fifth concept",
  list_desc: "Too many bikes, come take this one away and go on a ride!",
  price: 85,
  address: "145 Jefferson St #400, San Francisco",
  city: "San Francisco",
  zip: 94133
)

Listing.create!(
  user_id: 9,
  list_title: "jimmy's sixth concept",
  list_desc: "Too many bikes, come take this one away and go on a ride!",
  price: 85,
  address: "420 Mason St, San Francisco",
  city: "San Francisco",
  zip: 94102
)

Listing.create!(
  user_id: 9,
  list_title: "jimmy's seventh concept",
  list_desc: "Too many bikes, come take this one away and go on a ride!",
  price: 85,
  address: "980 Market St, San Francisco, CA",
  city: "San Francisco",
  zip: 94102
)

Listing.create!(
  user_id: 16,
  list_title: "julie's seventh concept",
  list_desc: "Too many bikes, come take this one away and go on a ride!",
  price: 85,
  address: "1631 E Capitol Expy #101, San Jose",
  city: "San Jose",
  zip: 95121
)

Listing.create!(
  user_id: 9,
  list_title: "jimmy's eigth concept",
  list_desc: "Too many bikes, come take this one away and go on a ride!",
  price: 85,
  address: "Tokyo, Japan",
  city: "Tokyo",
  zip: 99999
)

Listing.create!(
  user_id: 1,
  list_title: "guest's concept",
  list_desc: "Too many bikes, come take this one away and go on a ride!",
  price: 85,
  address: "Paris, France",
  city: "Paris",
  zip: 99999
)

Listing.create!(
  user_id: 1,
  list_title: "guest's concept",
  list_desc: "Too many bikes, come take this one away and go on a ride!",
  price: 85,
  address: "Los Angelos, California",
  city: "Los Angelos",
  zip: 99999
)

Image.create!( listing_id: 1, url: "http://i.imgur.com/OUTwK5G.jpg?1?5610" )
Image.create!( listing_id: 1, url: "http://i.imgur.com/GrMhkd4.jpg?1?6240" )
Image.create!( listing_id: 1, url: "http://i.imgur.com/EIez2hv.jpg?1?6895" )

Image.create!( listing_id: 2, url: "http://i.imgur.com/r5jWeU7.jpg?1?1382" )
Image.create!( listing_id: 2, url: "http://i.imgur.com/vAww9aX.jpg?1?6623" )
Image.create!( listing_id: 2, url: "http://i.imgur.com/5wYwjSk.jpg?1?8754" )

Image.create!( listing_id: 3, url: "http://i.imgur.com/ddtfH0k.jpg?1?5753" )
Image.create!( listing_id: 3, url: "http://i.imgur.com/68Z6XLm.jpg?1?1228" )
Image.create!( listing_id: 3, url: "http://i.imgur.com/iK1imFs.jpg" )

Image.create!( listing_id: 4, url: "http://i.imgur.com/zandDwt.jpg" )
Image.create!( listing_id: 4, url: "http://i.imgur.com/cSF5wRy.jpg?1?4195" )
Image.create!( listing_id: 4, url: "http://i.imgur.com/7zddn1u.jpg" )

Image.create!( listing_id: 5, url: "http://i.imgur.com/hpQmPUd.jpg?1?3486" )
Image.create!( listing_id: 5, url: "http://i.imgur.com/0EGyl0B.jpg?1?1068" )
Image.create!( listing_id: 5, url: "http://i.imgur.com/SMlkDqj.jpg?1?3750" )

Image.create!( listing_id: 6, url: "http://i.imgur.com/y91TBGc.jpg?1?9907" )
Image.create!( listing_id: 6, url: "http://i.imgur.com/a1zbCvB.jpg?1?5888" )
Image.create!( listing_id: 6, url: "http://i.imgur.com/R29s96D.jpg?1?3593" )

Image.create!( listing_id: 7, url: "http://i.imgur.com/y91TBGc.jpg?1?9907" )
Image.create!( listing_id: 7, url: "http://i.imgur.com/a1zbCvB.jpg?1?5888" )
Image.create!( listing_id: 7, url: "http://i.imgur.com/R29s96D.jpg?1?3593" )

Image.create!( listing_id: 8, url: "http://i.imgur.com/mWXfpk4.jpg" )
Image.create!( listing_id: 8, url: "http://i.imgur.com/3nRf9bi.jpg" )
Image.create!( listing_id: 8, url: "http://i.imgur.com/qjnmm9o.jpg" )

Image.create!( listing_id: 9, url: "http://i.imgur.com/eGlvOz0.jpg?1?5818" )
Image.create!( listing_id: 9, url: "http://i.imgur.com/GxDFoWq.jpg?1?4518" )
Image.create!( listing_id: 9, url: "http://i.imgur.com/xaecGwP.jpg?1?6323" )

Image.create!( listing_id: 10, url: "http://i.imgur.com/67xekJ2.jpg?1?9782" )
Image.create!( listing_id: 10, url: "http://i.imgur.com/mvdketB.jpg?1?6297" )
Image.create!( listing_id: 10, url: "http://i.imgur.com/u4aSoOF.jpg" )

Image.create!( listing_id: 11, url: "http://i.imgur.com/t6JiFgg.jpg" )
Image.create!( listing_id: 11, url: "http://i.imgur.com/DdayRj4.jpg" )
Image.create!( listing_id: 11, url: "http://i.imgur.com/BwrC1j9.jpg?1?2693" )

Image.create!( listing_id: 12, url: "http://i.imgur.com/9mu2TRE.jpg?1?1122" )
Image.create!( listing_id: 12, url: "http://i.imgur.com/A4Nnk7R.jpg" )
Image.create!( listing_id: 12, url: "http://i.imgur.com/eiigU6k.jpg?2?1749" )

Image.create!( listing_id: 13, url: "http://i.imgur.com/8PVaehl.jpg?1?8019" )
Image.create!( listing_id: 13, url: "http://i.imgur.com/8oneHeX.jpg?1?6924" )
Image.create!( listing_id: 13, url: "http://i.imgur.com/L1kokwL.jpg?1?5470" )

Image.create!( listing_id: 14, url: "http://i.imgur.com/Slthm0H.jpg" )
Image.create!( listing_id: 14, url: "http://i.imgur.com/3sK0nYw.jpg" )
Image.create!( listing_id: 14, url: "http://i.imgur.com/o9EEYPH.jpg" )

Image.create!( listing_id: 15, url: "http://i.imgur.com/kPWV78G.jpg" )
Image.create!( listing_id: 15, url: "http://i.imgur.com/Jq4hKPN.jpg?1?1142" )
Image.create!( listing_id: 15, url: "http://i.imgur.com/CuY4o5E.jpg?1?3622" )

Image.create!( listing_id: 16, url: "http://i.imgur.com/4lDP0ki.jpg" )
Image.create!( listing_id: 16, url: "http://i.imgur.com/AlVbeym.jpg" )
Image.create!( listing_id: 16, url: "http://i.imgur.com/CuY4o5E.jpg?1?3622" )

Image.create!( listing_id: 17, url: "http://i.imgur.com/ln7jTtq.jpg?1?9052" )
Image.create!( listing_id: 17, url: "http://i.imgur.com/8V3KA2a.jpg?1?3031" )
Image.create!( listing_id: 17, url: "http://i.imgur.com/doUNroR.jpg?1?4168" )

Image.create!( listing_id: 18, url: "http://i.imgur.com/pgO9gdL.jpg?1?9628" )
Image.create!( listing_id: 18, url: "http://i.imgur.com/ln7jTtq.jpg?1?9052" )
Image.create!( listing_id: 18, url: "http://i.imgur.com/wKZTwsq.jpg?1?3979" )

Image.create!( listing_id: 19, url: "http://i.imgur.com/PoQJnnm.jpg?1?6507" )
Image.create!( listing_id: 19, url: "http://i.imgur.com/Vh9TcqN.jpg?1?1660" )
Image.create!( listing_id: 19, url: "http://i.imgur.com/i4e9hsF.jpg?1?7839" )

Image.create!( listing_id: 20, url: "http://i.imgur.com/u6pAo6A.jpg?1?2312" )
Image.create!( listing_id: 20, url: "http://i.imgur.com/xf6agx8.jpg?1?5638" )
Image.create!( listing_id: 20, url: "http://i.imgur.com/Nrzg1L5.jpg" )

Image.create!( listing_id: 21, url: "http://i.imgur.com/ao031TK.jpg?1?6180" )
Image.create!( listing_id: 21, url: "http://i.imgur.com/83g2uAm.jpg?1?1699" )
Image.create!( listing_id: 21, url: "http://i.imgur.com/8GGAecb.jpg?1?6405" )

Image.create!( listing_id: 22, url: "http://i.imgur.com/OIHunHA.jpg?1?5045" )
Image.create!( listing_id: 22, url: "http://i.imgur.com/Uz7NkhP.jpg?1?9551" )
Image.create!( listing_id: 22, url: "http://i.imgur.com/2q5aDOm.jpg?1?4731" )

Image.create!( listing_id: 23, url: "http://i.imgur.com/lmxP6lN.jpg?1?4414" )
Image.create!( listing_id: 23, url: "http://i.imgur.com/12EElGE.jpg?1?4175" )
Image.create!( listing_id: 23, url: "http://i.imgur.com/yjoBJFi.jpg?1?5647" )

Image.create!( listing_id: 24, url: "http://i.imgur.com/3EkMFvl.jpg?1?6445" )
Image.create!( listing_id: 24, url: "http://i.imgur.com/zoKjury.jpg?1?2134" )
Image.create!( listing_id: 24, url: "http://i.imgur.com/oVUzZj1.jpg?1?3002" )

Image.create!( listing_id: 25, url: "http://i.imgur.com/FLs46Vs.jpg" )
Image.create!( listing_id: 25, url: "http://i.imgur.com/HCdeU3z.jpg?1?3656" )
Image.create!( listing_id: 25, url: "http://i.imgur.com/nQZfQaU.jpg" )

Image.create!( listing_id: 26, url: "http://i.imgur.com/OIHunHA.jpg?1?5045" )
Image.create!( listing_id: 26, url: "http://i.imgur.com/Uz7NkhP.jpg?1?9551" )
Image.create!( listing_id: 26, url: "http://i.imgur.com/2q5aDOm.jpg?1?4731" )

Image.create!( listing_id: 27, url: "http://i.imgur.com/lmxP6lN.jpg?1?4414" )
Image.create!( listing_id: 27, url: "http://i.imgur.com/12EElGE.jpg?1?4175" )
Image.create!( listing_id: 27, url: "http://i.imgur.com/yjoBJFi.jpg?1?5647" )

Image.create!( listing_id: 28, url: "http://i.imgur.com/lmxP6lN.jpg?1?4414" )
Image.create!( listing_id: 28, url: "http://i.imgur.com/12EElGE.jpg?1?4175" )
Image.create!( listing_id: 28, url: "http://i.imgur.com/yjoBJFi.jpg?1?5647" )
