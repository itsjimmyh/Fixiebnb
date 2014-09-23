# == Schema Information
#
# Table name: listings
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  list_title :string(255)      not null
#  list_desc  :text             default("Please describe your ride"), not null
#  frame      :string(255)      default("frame"), not null
#  f_wheel    :string(255)      default("regular wheel"), not null
#  r_wheel    :string(255)      default("regular wheel"), not null
#  seat       :string(255)      default("regular"), not null
#  handlebars :string(255)      default("dropbars"), not null
#  brakes     :string(255)      default("regular"), not null
#  daily      :integer          default(5), not null
#  weekly     :integer          default(35), not null
#  rules      :text             default("Please do not purposefully damage the bike"), not null
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
