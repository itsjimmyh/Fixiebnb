class Listing < ActiveRecord::Base
  validates :user_id,
            :list_title,
            :list_desc,
            :price,
            :address,
            :city,
            :zip,
            :deposit,
            presence: true

  belongs_to(
    :owner,
    class_name: "User",
    foreign_key: :user_id,
    primary_key: :id
  )

  has_many(
    :requests,
    class_name: "Request",
    foreign_key: :listing_id,
    primary_key: :id
  )

  has_many(
    :images,
    class_name: "Image",
    foreign_key: :listing_id,
    primary_key: :id,
    dependent: :destroy
  )

  geocoded_by :address
  reverse_geocoded_by :latitude, :longitude
  validate :_geocode

  private
  def _geocode
    # need sleep to seed / push to heroku
    sleep 0.5
    if self.address.nil?
      reverse_geocode unless self.latitude.nil? || self.longitude.nil?
    else
      geocode if self.latitude.nil? && self.longitude.nil?
    end
  end

end
