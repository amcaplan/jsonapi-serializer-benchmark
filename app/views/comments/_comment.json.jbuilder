json.extract! comment, :id, :title, :content, :post, :author, :created_at, :updated_at
json.url comment_url(comment, format: :json)
