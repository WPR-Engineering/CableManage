class AddTerminalToRuncode < ActiveRecord::Migration[5.1]
  def change
    add_column :runcodes, :terminal, :has_one, index: true
  end
end
