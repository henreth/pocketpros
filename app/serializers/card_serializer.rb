class CardSerializer < ActiveModel::Serializer
  attributes :id, :rarity, :for_sale, :value
  has_one :user
  has_one :character
end
