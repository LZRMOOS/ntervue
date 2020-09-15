##################
# Not relevant!! #
##################
# == Schema Information
#
# Table name: car_coolnesses
#
#  id             :integer          not null, primary key
#  coolness_score :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  car_make_id    :integer
#

class CarCoolness < ApplicationRecord
  belongs_to :car_make
end
