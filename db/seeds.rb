# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'james', password: '123', age: '25', city: 'New York')

User.create(username: 'lameguy1', password: '123', age: '24', city: 'New York')

Sneaker.create(name: "Acronym Presto Mid Olive", release_date: "Sepetember 15, 2016", market_value: '$1000', img_url: 'https://cdn.thesolesupplier.co.uk/2017/09/Acronym-x-NikeLAB-Air-Presto-Mid-Black-Olive.png', style_code: '844672-200')

SneakerUser.create(user_id: 1, sneaker_id: 1)

Post.create(title: 'Why you lames want the new acronym prestos this time around', body:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', user_id: 1, sneaker_id: 1)

Comment.create(text: "Dude i missed out and im salty because OG's go for so much money, my personal value is based on the material worth of my footwear", user_id: 2, post_id: 1)
Comment.create(text: "Yo, you are so lame", user_id: 1, post_id: 1)
