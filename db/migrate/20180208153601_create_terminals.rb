class CreateTerminals < ActiveRecord::Migration[5.1]
  def change
    create_table :terminals do |t|
      t.integer :terminal_number
      t.string :terminal_type
      t.string :signal_type

      t.timestamps
    end
  end
end
