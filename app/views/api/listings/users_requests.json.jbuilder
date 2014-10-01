json.array! @listings do |listing|
  json.extract! listing, :id
  json.images listing.images, :url
end
