# == Schema Information
#
# Table name: ip_geolocations
#
#  id          :integer          not null, primary key
#  ip_address  :string(255)
#  geolocation :string(255)
#  notes       :text(65535)
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
