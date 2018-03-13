class AddPortToPort < ActiveRecord::Migration[5.1]
  def change
    add_column :ports, :port, :string
  end
end
