json.array!(@manage_products) do |manage_product|
  json.extract! manage_product, 
  json.url manage_product_url(manage_product, format: :json)
end
