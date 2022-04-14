class CardSerializer < ActiveModel::Serializer
  attributes :id, :unique_id, :rarity, :for_sale, :sale_price
  has_one :user
  has_one :character
end
