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

require 'test_helper'

class ListingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
