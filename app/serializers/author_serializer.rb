class AuthorSerializer
  include JSONAPI::Serializer

  attribute :name

  has_many :posts
  has_many :comments
end
