class AuthorSerializer < ActiveModel::Serializer
  attributes %i[id name]

  has_many :books, serializer: BookSerializer
end
