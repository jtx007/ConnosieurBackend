class Sneaker < ApplicationRecord
  has_many :sneaker_users
  has_many :users, through: :sneaker_users
end
