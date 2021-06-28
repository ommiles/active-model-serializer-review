class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :email, :img_url, :favorite_genre, :bio, :latitude, :longitude
end
