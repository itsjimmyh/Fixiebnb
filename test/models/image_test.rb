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

require 'test_helper'

class ImageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
