class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :created_at, :user_id, :sneaker_id, :likes, :dislikes
end
