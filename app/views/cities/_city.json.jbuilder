json.extract! city, :id, :state_id, :description, :cep, :created_at, :updated_at
json.url city_url(city, format: :json)
