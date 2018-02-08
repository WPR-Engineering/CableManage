json.extract! terminal, :id, :terminal_number, :terminal_type, :signal_type, :created_at, :updated_at, :punch_block_id
json.url terminal_url(terminal, format: :json)
