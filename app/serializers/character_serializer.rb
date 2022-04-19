class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :image_url
end
