# == Schema Information
#
# Table name: images
#
#  id         :integer          not null, primary key
#  listing_id :integer          not null
#  url        :string(255)      not null
#  created_at :datetime
#  updated_at :datetime
#

class Image < ActiveRecord::Base
  
  validates :listing_id, :url, presence: true

  belongs_to(
    :listing,
    class_name: "Listing",
    foreign_key: :listing_id,
    primary_key: :id
  )

end
