class AddDeviceNameToDevices < ActiveRecord::Migration[5.1]
  def change
    add_column :devices, :device_name, :string
  end
end
