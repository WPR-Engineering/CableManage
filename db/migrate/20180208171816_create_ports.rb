class CreatePorts < ActiveRecord::Migration[5.1]
  def change
    create_table :ports do |t|
      t.string :port_type
      t.string :signal_type
      t.text :port_description
      t.boolean :port_input

      t.timestamps
    end
  end
end
