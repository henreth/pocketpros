class CardSerializer < ActiveModel::Serializer
  attributes :id, :unique_id, :rarity, :for_sale, :sale_price, :updated_at
  has_one :user
  has_one :character
  has_many :transactions
end
