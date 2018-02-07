class CreatePorts < ActiveRecord::Migration[5.1]
  def change
    create_table :ports do |t|
      t.boolean :direction
      t.text :port_type
      t.integer :port_number

      t.timestamps
    end
  end
end
