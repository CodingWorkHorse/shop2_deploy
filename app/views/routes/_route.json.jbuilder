json.extract! route, :id, :driver, :vehicle, :cargo_capacity, :departure_address, :departure_lattitude, :departure_longitude, :stop_1_address, :stop_2_address, :stop_3_address, :stop_4_address, :stop_5_address, :stop_6_address, :return_address, :return_lattitude, :return_longitude, :created_at, :updated_at
json.url route_url(route, format: :json)
