class AddDeviceToPort < ActiveRecord::Migration[5.1]
  def change
    add_column :ports, :device_id, :integer
  end
end
