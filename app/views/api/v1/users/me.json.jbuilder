    json.id @user.id
    json.username @user.username
    json.city @user.city
    json.age @user.age
    json.avatarUrl @user.avatarUrl
    json.posts @user.posts
    json.comments @user.comments
    json.wanted_sneakers @user.wanted_sneakers do |sneaker|
        json.brand  sneaker.brand
        json.category sneaker.category
        json.colorway   sneaker.colorway
        json.id         sneaker.id
        json.img_url sneaker.img_url
        json.market_value sneaker.market_value
        json.release_date sneaker.release_date
        json.retail_price sneaker.retail_price
        json.shoe sneaker.shoe
        json.style_id sneaker.style_id
        json.title sneaker.title
        json.uuid  sneaker.uuid
        json.wanted_sneaker_id @user.want_sneaker_id(sneaker.id) 
    end
    json.owned_sneakers @user.owned_sneakers do |sneaker|
        json.brand  sneaker.brand
        json.category sneaker.category
        json.colorway   sneaker.colorway
        json.id         sneaker.id
        json.img_url sneaker.img_url
        json.market_value sneaker.market_value
        json.release_date sneaker.release_date
        json.retail_price sneaker.retail_price
        json.shoe sneaker.shoe
        json.style_id sneaker.style_id
        json.title sneaker.title
        json.uuid  sneaker.uuid
        json.owned_sneaker_id @user.own_sneaker_id(sneaker.id) 
    end
    













 