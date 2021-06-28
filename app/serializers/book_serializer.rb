class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :description, :genre, :isbn, :publisher
  belongs_to :user
end
