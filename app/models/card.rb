class Card < ApplicationRecord
  belongs_to :user
  belongs_to :character
  has_many :transactions

  enum rarity: { bronze: 0, silver: 1, gold: 2, holo: 3 }

  validates :rarity, presence: true
  validates :unique_id, presence: true, uniqueness: true
  validates :variant, presence: true, :numericality => {greater_than_or_equal_to: 0, less_than_or_equal_to: 4}

end
