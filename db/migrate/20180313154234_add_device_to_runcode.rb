class AddDeviceToRuncode < ActiveRecord::Migration[5.1]
  def change
    add_column :runcodes, :device, :has_one
    add_column :runcodes, :port_id, :through
  end
end
