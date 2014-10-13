
www.fixiebnb.com

A Fixed-Gear Themed AirBNB Clone

Key Features

Simluates AirBNB as a Single-Page Backbone app consuming RESTful Rails API and custom routes.
Consumes Google Maps API to query Rails Database for responsive real-time search filtering.
Consumes Google Maps Geocoder API to allow users to create listings with any address known to Google Maps.
Overrides Backbone onRender method with custom onRender method to display Google Map properly.
User's are able to make a rental request, and the owner can approve/deny the request.
Reduces n + 1 queries using ActiveRecord :includes


Roadmap

Phase 0: User Authentication

Guest account for site visitors.
Users can register, sign in, and sign out of the application.
Support restricting access to certain pages based on whether a user is authenticated.

Phase 1: Searching

Users should be able to type in any address and search anywhere they want.
Google Maps should be centered at the users search request.
Bike Listings should be displayed based on map bounds.

Phase 2: Marker on Map for respective Listing

Marker should be responsive to hovering over the listing.
Marker should only drop upon listing returning from Rails backend.
Markers should be removed when they are no longer within map bounds.

Phase 3: Info Window on Marker

Clicking on a google maps Marker should show an InfoWindow.
Hovering over a listing should activate the respective Marker and show InfoWindow

Phase 4: Bike Listing Show

Clicking on a listing from the Search page should bring user to the selected bikes's info page.
Listing Show page should show multiple pictures of the listing to entice potential renter.

Phase 5: Requests

Users should be able to request the bike from start date to end date.

Phase 6: User Dashboard

Users should be able to see their listings.
Users should be able to see their requests.

Phase 7: Approve/Deny

Owners should be able to approve or deny a request.

Phase 8: Create a listing

Users should be able to post a listing of their bike.
Listing a bike should take the user to the search View showing the location of their bike.
After creation of a listing, there should be a marker on the map indicating where the listing is.


Future TODOs:

Implement pagination when users zoom out too far, huge bottleneck upon scaling.
Allow users to filter by more search parameters such as price.
Users should be able to create a profile of themselves instead of having an Orca whale.
Instead of storing all the infoWindows and Markers in an array, create them on the fly.
