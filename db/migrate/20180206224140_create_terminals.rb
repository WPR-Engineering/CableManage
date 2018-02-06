class CreateTerminals < ActiveRecord::Migration[5.1]
  def change
    create_table :terminals do |t|
      t.integer :terminal_number
      t.text :terminal_type
      t.references :PunchBlock, foreign_key: true

      t.timestamps
    end
  end
end
