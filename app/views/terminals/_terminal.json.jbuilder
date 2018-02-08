json.extract! terminal, :id, :terminal_number, :terminal_type, :signal_type, :created_at, :updated_at
json.url terminal_url(terminal, format: :json)
