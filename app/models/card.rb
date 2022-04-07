class Card < ApplicationRecord
  belongs_to :user
  belongs_to :character

  enum rarity: { bronze: 0, silver: 1, gold: 2, holo: 3 }

  validates :rarity, presence: true

end
