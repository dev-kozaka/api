class BookSerializer < ActiveModel::Serializer
  attributes %i[id name]

  belongs_to :author,  serializer: AuthorSerializer
end
