# == Schema Information
#
# Table name: car_models
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  year        :integer
#  color       :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  car_make_id :integer
#

require 'test_helper'

class CarModelTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
