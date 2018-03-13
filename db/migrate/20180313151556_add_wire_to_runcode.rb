class AddWireToRuncode < ActiveRecord::Migration[5.1]
  def change
    add_column :runcodes, :wire, :has_one, index: true
  end
end
