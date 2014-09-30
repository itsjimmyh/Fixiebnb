json.array! @listings do |listing|
  json.extract! listing, *Listing.column_names

  json.feature_img listing.images, :url

  json.images listing.images, :url

end
