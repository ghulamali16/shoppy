json.extract! product, :id, :title, :description, :price, :make, :created_at, :updated_at
json.url product_url(product, format: :json)
