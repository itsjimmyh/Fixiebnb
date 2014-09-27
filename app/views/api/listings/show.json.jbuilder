json.extract! @listing, :user_id, :list_title, :list_desc, :price, :address, :deposit

json.owner @listing.owner, :username

if @listing.images
  json.images @listing.images, :url
end
