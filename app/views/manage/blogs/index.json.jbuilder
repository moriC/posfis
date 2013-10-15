json.array!(@manage_blogs) do |manage_blog|
  json.extract! manage_blog, :user_id, :category_id, :title, :content, :condition
  json.url manage_blog_url(manage_blog, format: :json)
end
