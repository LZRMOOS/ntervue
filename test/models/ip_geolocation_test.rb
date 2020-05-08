# == Schema Information
#
# Table name: ip_geolocations
#
#  id          :integer          not null, primary key
#  ip_address  :string
#  geolocation :string
#  notes       :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#

require 'test_helper'

class IpGeolocationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
