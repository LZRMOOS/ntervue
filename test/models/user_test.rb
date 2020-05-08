# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string
#  passwd          :string
#  password_digest :string
#  email           :string
#  admin           :boolean          default("0")
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
