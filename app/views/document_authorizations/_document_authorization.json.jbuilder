json.extract! document_authorization, :id, :name, :code, :created_at, :updated_at
json.url document_authorization_url(document_authorization, format: :json)