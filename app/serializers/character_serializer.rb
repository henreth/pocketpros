class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :description, :birth_year, :image_url
end
