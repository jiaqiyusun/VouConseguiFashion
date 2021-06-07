json.extract! product, :id, :category_id, :title, :price_current, :price, :description, :status, :created_at, :updated_at
json.url product_url(product, format: :json)
