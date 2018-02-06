class CreateWires < ActiveRecord::Migration[5.1]
  def change
    create_table :wires do |t|
      t.integer :number
      t.string :wire_type
      t.boolean :multi_core

      t.timestamps
    end
  end
end
