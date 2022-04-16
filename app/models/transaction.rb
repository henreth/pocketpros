class Transaction < ApplicationRecord
  belongs_to :card

  validates :to_id, presence: true
end
