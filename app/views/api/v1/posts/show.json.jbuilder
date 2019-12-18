json.id @post.id
json.title @post.title
json.body @post.body
json.created_at @post.created_at
json.user_id @post.user_id
json.sneaker_id @post.sneaker_id
json.likes @post.likes
json.dislikes @post.dislikes
json.user @post.user.username
json.avatar @post.user.avatarUrl
json.comments @post.comments do |comment|
    json.id comment.id
    json.post_id comment.post_id
    json.text comment.text
    json.user comment.user.username
    json.avatar comment.user.avatarUrl
    json.likes comment.likes
    json.dislikes comment.dislikes
end
