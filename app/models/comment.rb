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

class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :text, presence: { minimum: 3}

  
  def username
    self.user.username
  end
  
end
