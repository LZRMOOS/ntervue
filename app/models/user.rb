# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string(255)
#  passwd          :string(255)
#  password_digest :string(255)
#  email           :string(255)
#  admin           :boolean          default("0")
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true, length: { minimum: 4, maximum: 30 }
  has_secure_password

  has_many :ip_geolocations
  has_many :messages
end
