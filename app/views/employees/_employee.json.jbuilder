json.extract! employee, :id, :identificationcard, :name, :lastname, :birthday, :sex_id, :admissiondate, :departuredate, :salary, :created_at, :updated_at
json.url employee_url(employee, format: :json)