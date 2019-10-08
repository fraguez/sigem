json.extract! message, :id, :name, :code, :created_at, :updated_at
json.url message_url(message, format: :json)