class CreateWires < ActiveRecord::Migration[5.1]
  def change
    create_table :wires do |t|
      t.integer :wire_number
      t.string :wire_type
      t.string :signal_type
      t.text :wire_description
      t.boolean :multi_pair

      t.timestamps
    end
  end
end
