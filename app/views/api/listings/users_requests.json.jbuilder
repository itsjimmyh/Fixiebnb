json.array! @listings do |listing|
  json.extract! listing, :listing_id
  json.images listing.images[0], :url
end
