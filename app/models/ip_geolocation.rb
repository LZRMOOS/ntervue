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

class IpGeolocation < ApplicationRecord
  validates :ip_address, presence: true, length: { minimum: 5, maximum: 50 }
  validates :notes, presence: true

  belongs_to :user
end
