# == Schema Information
#
# Table name: posts
#
#  id         :bigint(8)        not null, primary key
#  title      :string
#  body       :text
#  user_id    :integer
#  sneaker_id :integer
#  likes      :integer          default(0)
#  dislikes   :integer          default(0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ApplicationRecord
  belongs_to :user
  belongs_to :sneaker, optional: true
  has_many :comments

end
