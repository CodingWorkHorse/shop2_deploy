json.extract! order, :id, :user, :email, :status, :address, :town, :zipcode, :lattitude, :longitude, :route, :stop_on_route, :total, :order_date, :created_at, :updated_at
json.url order_url(order, format: :json)
