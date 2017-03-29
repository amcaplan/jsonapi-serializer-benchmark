class CommentSerializer
  include JSONAPI::Serializer

  attributes :title, :content

  has_one :author
  has_one :post
end
