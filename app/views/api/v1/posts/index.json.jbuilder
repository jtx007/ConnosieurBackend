json.array! @posts do |post|
    json.id  post.id
    json.title post.title 
    json.body post.body
    json.user post.user.username
    json.sneaker post.sneaker_id
    json.likes post.likes
    json.dislikes post.dislikes
    json.comments post.comments do |comment|
        json.id comment.id
        json.post_id comment.post_id
        json.text comment.text
        json.username comment.user.username
        json.likes comment.likes
        json.dislikes comment.dislikes
    end
end
 