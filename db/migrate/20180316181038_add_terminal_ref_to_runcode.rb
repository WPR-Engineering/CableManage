class AddTerminalRefToRuncode < ActiveRecord::Migration[5.1]
  def change
    add_reference :runcodes, :terminal, foreign_key: true
  end
end
