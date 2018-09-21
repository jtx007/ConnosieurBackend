class Post < ApplicationRecord
  belongs_to :user
  belongs_to :sneaker
  has_many :comments

end
