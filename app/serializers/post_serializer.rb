class PostSerializer
  include JSONAPI::Serializer

  attributes :title, :content

  has_one :author
end
