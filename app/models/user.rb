class User < ApplicationRecord
    has_many :cards
    # has_many :characters, through :cards
    has_many :transactions, through: :cards

    has_secure_password

    validates :username, presence: true, uniqueness: true
    validates :first_name, presence: true
    validates :last_name, presence: true
end
