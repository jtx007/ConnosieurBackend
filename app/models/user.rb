class User < ApplicationRecord

  validates :username, uniqueness: true
  has_secure_password
  has_many :posts
  has_many :comments
  has_many :sneaker_users
  has_many :sneakers, through: :sneaker_users
end
