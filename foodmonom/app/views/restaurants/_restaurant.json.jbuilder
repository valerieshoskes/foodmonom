json.extract! restaurant, :id, :name, :url, :hours, :address, :city, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)