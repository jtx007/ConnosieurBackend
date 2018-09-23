# == Schema Information
#
# Table name: comments
#
#  id         :bigint(8)        not null, primary key
#  text       :string
#  user_id    :integer
#  post_id    :integer
#  likes      :integer          default(0)
#  dislikes   :integer          default(0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
