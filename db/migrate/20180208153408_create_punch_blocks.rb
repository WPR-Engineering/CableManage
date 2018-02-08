class CreatePunchBlocks < ActiveRecord::Migration[5.1]
  def change
    create_table :punch_blocks do |t|
      t.integer :block_number
      t.string :block_type
      t.string :block
      t.text :description
      t.string :block_location

      t.timestamps
    end
  end
end
