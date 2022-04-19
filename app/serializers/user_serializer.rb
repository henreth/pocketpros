class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :username, :password_digest, :credits, :packs, :last_log_in, :streak
  has_many :cards
end


