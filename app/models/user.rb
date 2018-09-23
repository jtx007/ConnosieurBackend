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
  
  has_many :posts
  has_many :comments
  has_many :sneaker_users
  has_many :sneakers, through: :sneaker_users

  validates :username, uniqueness: true

  # Hijack knock's implementation of checking for email with username instead
  # Looking inside the request sent for a username and password that exist in via the model in db
  def self.from_token_request(request)
    
    username = request.params["auth"] && request.params["auth"]["username"]
    self.find_by(username: username)
    
  end

end
