json.extract! customermanager, :id, :customer_id, :identificationcard, :name, :lastname, :birthday, :sex_id, :created_at, :updated_at
json.url customermanager_url(customermanager, format: :json)