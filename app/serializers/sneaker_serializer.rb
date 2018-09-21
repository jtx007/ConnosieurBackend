class SneakerSerializer < ActiveModel::Serializer
  attributes :id, :name, :release_date, :style_code, :market_value
end
