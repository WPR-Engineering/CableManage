class AddWireRefToRuncode < ActiveRecord::Migration[5.1]
  def change
    add_reference :runcodes, :wire, foreign_key: true
  end
end
