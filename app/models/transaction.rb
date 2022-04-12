class Transaction < ApplicationRecord
  belongs_to :card

  validates :to_id, presence: true
  # validates :from_id, presence: true
  validates :sale_price, presence: true
end
