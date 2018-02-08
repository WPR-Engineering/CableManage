json.extract! device, :id, :device_type, :device_location, :device_description, :created_at, :updated_at
json.url device_url(device, format: :json)
