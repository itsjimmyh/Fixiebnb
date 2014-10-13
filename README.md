
www.fixiebnb.com

<h1>A Fixed-Gear Themed AirBNB Clone</h1>
<br>
<h2>Key Features</h2>
<br>
<ul>
  <li>Simluates AirBNB as a Single-Page Backbone app consuming RESTful Rails API and custom routes.</li>
  <li>Consumes Google Maps API to query Rails Database for responsive real-time search filtering.</li>
  <li>Consumes Google Maps Geocoder API to allow users to create listings with any address known to Google Maps.</li>
  <li>Overrides Backbone onRender method with custom onRender method to display Google Map properly.</li>
  <li>User's are able to make a rental request, and the owner can approve/deny the request.</li>
  <li>Reduces n + 1 queries using ActiveRecord :includes</li>
</ul>
<br><br>

<h3>Roadmap</h3>
<br>
<h4>Phase 0: User Authentication</h4>
<ul>
  <li>Guest account for site visitors.</li>
  <li>Users can register, sign in, and sign out of the application.</li>
  <li>Support restricting access to certain pages based on whether a user is authenticated.</li>
</ul>
<br>
<h4>Phase 1: Searching</h4>
<ul>
  <li>Users should be able to type in any address and search anywhere they want.</li>
  <li>Google Maps should be centered at the users search request.</li>
  <li>Bike Listings should be displayed based on map bounds.</li>
</ul>
<br>
<h4>Phase 2: Marker on Map for respective Listing</h4>
<ul>
  <li>Marker should be responsive to hovering over the listing.</li>
  <li>Marker should only drop upon listing returning from Rails backend.</li>
  <li>Markers should be removed when they are no longer within map bounds.</li>
</ul>
<br>
<h4>Phase 3: Info Window on Marker</h4>
<ul>
  <li>Clicking on a google maps Marker should show an InfoWindow.</li>
  <li>Hovering over a listing should activate the respective Marker and show InfoWindow</li>
</ul>
<br>
<h4>Phase 4: Bike Listing Show</h4>
<ul>
  <li>Clicking on a listing from the Search page should bring user to the selected bikes's info page.</li>
  <li>Listing Show page should show multiple pictures of the listing to entice potential renter.</li>
</ul>
<br>
<h4>Phase 5: Requests</h4>
<ul>
  <li>Users should be able to request the bike from start date to end date.</li>
</ul>
<br>
<h4>Phase 6: User Dashboard</h4>
<ul>  
  <li>Users should be able to see their listings.</li>
  <li>Users should be able to see their requests.</li>
</ul>
<br>
<h4>Phase 7: Approve/Deny</h4>
<ul>
  <li>Owners should be able to approve or deny a request.</li>
</ul>
<br>
<h4>Phase 8: Create a listing</h4>
<ul>
  <li>Users should be able to post a listing of their bike.</li>
  <li>Listing a bike should take the user to the search View showing the location of their bike.</li>
  <li>After creation of a listing, there should be a marker on the map indicating where the listing is.</li>
</ul>
<br>
<br>
<h4>Future TODOs:</h4>
<ul>
  <li>Implement pagination when users zoom out too far, huge bottleneck upon scaling.</li>
  <li>Allow users to filter by more search parameters such as price.</li>
  <li>Users should be able to create a profile of themselves instead of having an Orca whale.</li>
  <li>Instead of storing all the infoWindows and Markers in an array, create them on the fly.</li>
</ul>
