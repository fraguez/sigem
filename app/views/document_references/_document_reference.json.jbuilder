json.extract! document_reference, :id, :name, :code, :created_at, :updated_at
json.url document_reference_url(document_reference, format: :json)