json.extract! device, :id, :device_type, :device_description, :device_location, :port_id, :created_at, :updated_at
json.url device_url(device, format: :json)
