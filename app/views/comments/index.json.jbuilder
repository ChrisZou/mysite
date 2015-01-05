json.array!(@comments) do |comment|
  json.extract! comment, :id, :content, :post_id, :username, :email, :site
  json.url comment_url(comment, format: :json)
end
