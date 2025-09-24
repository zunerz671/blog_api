class AuthorSerializer < ActiveModel::Serializer
  attributes :id, :name, :age

  has_many :articles
end
