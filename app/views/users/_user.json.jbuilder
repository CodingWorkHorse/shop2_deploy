json.extract! user, :id, :email, :role, :address, :town, :zipcode, :lattitude, :longitude, :route, :stop_on_route, :balance, :created_at, :updated_at
json.url user_url(user, format: :json)
