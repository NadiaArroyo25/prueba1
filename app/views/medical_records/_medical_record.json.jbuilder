json.extract! medical_record, :id, :patient_id, :patology, :habits, :current_state, :created_at, :updated_at
json.url medical_record_url(medical_record, format: :json)
