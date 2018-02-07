class CreateDevices < ActiveRecord::Migration[5.1]
  def change
    create_table :devices do |t|
      t.string :device_type
      t.text :device_description
      t.text :device_location
      t.references :port, foreign_key: true

      t.timestamps
    end
  end
end
