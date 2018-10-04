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

class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :created_at, :user_id, :sneaker_id, :likes, :dislikes
  
 

end

