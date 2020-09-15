##################
# Not relevant!! #
##################
# == Schema Information
#
# Table name: car_makes
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CarMake < ApplicationRecord
  has_many :car_models
  has_one :car_coolnesses
end
