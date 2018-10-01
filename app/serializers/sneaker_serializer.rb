# == Schema Information
#
# Table name: sneakers
#
#  id           :bigint(8)        not null, primary key
#  title        :string
#  category     :string
#  shoe         :string
#  release_date :string
#  colorway     :string
#  uuid         :string
#  brand        :string
#  style_id     :string
#  retail_price :string
#  market_value :string
#  img_url      :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class SneakerSerializer < ActiveModel::Serializer
  attributes :id, :title, :category, :shoe, :release_date, :colorway, :uuid, :brand, :style_id, :retail_price, :market_value, :img_url
  has_many :owners
  has_many :wanters
end
