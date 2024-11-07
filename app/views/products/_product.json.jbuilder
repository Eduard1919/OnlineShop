json.extract! product, :id, :name, :full_name, :price, :description, :production_date, :guarantee, :producer_id, :discount, :created_at, :updated_at
json.url product_url(product, format: :json)
