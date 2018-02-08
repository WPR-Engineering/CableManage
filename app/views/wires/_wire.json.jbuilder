json.extract! wire, :id, :wire_number, :wire_type, :signal_type, :wire_description, :multi_pair, :created_at, :updated_at
json.url wire_url(wire, format: :json)
