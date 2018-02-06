class CreatePunchBlocks < ActiveRecord::Migration[5.1]
  def change
    create_table :punch_blocks do |t|
      t.string :block_number
      t.string :block_type
      t.string :block_location
      t.text :block_description
      t.references :terminal, foreign_key: true

      t.timestamps
    end
  end
end
