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

class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :city, :age, :avatarUrl

  has_many :owned_sneakers

  has_many :wanted_sneakers
  
  has_many :posts
  has_many :comments
end
