json.id @comment.id
json.post_id @comment.post_id
json.text @comment.text
json.user @comment.user.username
json.avatar @comment.user.avatarUrl
json.likes @comment.likes
json.dislikes @comment.dislikes