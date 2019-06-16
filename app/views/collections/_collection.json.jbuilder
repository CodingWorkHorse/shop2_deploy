json.extract! collection, :id, :title, :user, :access_code, :created_at, :updated_at
json.url collection_url(collection, format: :json)
