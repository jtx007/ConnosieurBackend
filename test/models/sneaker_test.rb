# == Schema Information
#
# Table name: sneakers
#
#  id           :bigint(8)        not null, primary key
#  title        :string
#  category     :string
#  shoe         :string
#  release_date :string
#  colorway     :string
#  uuid         :string
#  brand        :string
#  style_id     :string
#  retail_price :string
#  market_value :string
#  img_url      :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class SneakerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
