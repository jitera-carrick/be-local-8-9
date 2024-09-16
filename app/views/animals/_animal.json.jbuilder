json.extract! animal, :id, :name, :description, :price, :created_at, :updated_at
json.url animal_url(animal, format: :json)
