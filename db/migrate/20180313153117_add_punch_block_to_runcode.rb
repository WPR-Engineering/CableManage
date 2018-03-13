class AddPunchBlockToRuncode < ActiveRecord::Migration[5.1]
  def change
    add_column :runcodes, :punch_block, :has_one
    add_column :runcodes, :wire_number, :through
  end
end
