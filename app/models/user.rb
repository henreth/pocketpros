class User < ApplicationRecord
    has_many :cards
    # has_many :characters, through :cards
    has_many :transactions, through: :cards

    has_secure_password

    validates :username, presence: true, uniqueness: true, length: {minimum: 4}, allow_blank: false
    validates :first_name, presence: true
    validates :last_name, presence: true

    def pack_count
        self.packs.map{|pack| Integer(pack[1])}.reduce{|sum,num| sum+num} - Integer(self.packs["total"])
    end

end
