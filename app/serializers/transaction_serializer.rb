class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :from_id, :to_id, :sale_price, :created_at
  has_one :card
end
