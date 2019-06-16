json.extract! note, :id, :title, :content, :user, :class, :collection, :organization, :topic, :created_at, :updated_at
json.url note_url(note, format: :json)
