# == Schema Information
#
# Table name: listings
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  list_title :string(255)      not null
#  list_desc  :text             default("Please describe your ride"), not null
#  price      :integer          default(5), not null
#  lat        :float
#  long       :float
#  street     :string(255)      not null
#  city       :string(255)      not null
#  state      :string(255)
#  zip        :integer
#  deposit    :integer          default(100), not null
#  created_at :datetime
#  updated_at :datetime
#

class Listing < ActiveRecord::Base
  validates :user_id,
            :list_title,
            :list_desc,
            :price,
            :street,
            :city,
            :state,
            :zip,
            :deposit,
            presence: true

  belongs_to(
    :owner,
    class_name: "User",
    foreign_key: :user_id,
    primary_key: :id
  )

end
