class CreateDevices < ActiveRecord::Migration[5.1]
  def change
    create_table :devices do |t|
      t.string :device_type
      t.string :device_location
      t.text :device_description

      t.timestamps
    end
  end
end
