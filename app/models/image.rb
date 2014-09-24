class Image < ActiveRecord::Base
  validates :listing_id, :url, presence: true

  belongs_to(
    :listing,
    class_name: "Listing",
    foreign_key: :listing_id,
    primary_key: :id
  )

end
