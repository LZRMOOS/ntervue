class IpGeolocation < ApplicationRecord
  validates :ip_address, presence: true, length: { minimum: 5, maximum: 50 }
  validates :notes, presence: true
end
