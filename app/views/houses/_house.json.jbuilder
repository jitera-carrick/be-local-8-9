json.extract! house, :id, :name, :description, :price, :created_at, :updated_at
json.url house_url(house, format: :json)
