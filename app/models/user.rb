# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  username        :string
#  password_digest :string
#  age             :string
#  city            :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  has_secure_password
  
  has_many :posts, -> { order "created_at DESC"}
  
  has_many :comments

  has_many :own_sneakers
  has_many :owned_sneakers, through: :own_sneakers, source: :sneaker

  has_many :want_sneakers
  has_many :wanted_sneakers, through: :want_sneakers, source: :sneaker

  validates :username, uniqueness: true

  # Hijack knock's implementation of checking for email with username instead
  # Looking inside the request sent for a username and password that exist in via the model in db
  def self.from_token_request(request)
    
    username = request.params["auth"] && request.params["auth"]["username"]
    self.find_by(username: username)
    
  end

  def formatted
    
    {id: self.id,
    username: self.username,
    city: self.city,
    age: self.age,
    avatarUrl: self.avatarUrl,
    posts: self.posts,
    comments: self.comments,
    wanted_sneakers: self.wanted_sneakers,
    owned_sneakers: self.owned_sneakers}
   
  end

end
