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

require 'test_helper'

class CarCoolnessTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
