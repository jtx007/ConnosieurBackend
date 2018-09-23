# == Schema Information
#
# Table name: sneaker_users
#
#  id         :bigint(8)        not null, primary key
#  user_id    :integer
#  sneaker_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class SneakerUserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
