json.extract! products_order, :id, :order_id, :product_id, :quantity, :unitary_value, :total_value, :created_at, :updated_at
json.url products_order_url(products_order, format: :json)
