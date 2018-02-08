class AddReferencesToPunchBlocks < ActiveRecord::Migration[5.1]
  def change
    add_reference :terminals, :punch_block, foreign_key: true
  end
end
