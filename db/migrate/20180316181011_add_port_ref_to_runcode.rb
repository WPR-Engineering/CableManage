class AddPortRefToRuncode < ActiveRecord::Migration[5.1]
  def change
    add_reference :runcodes, :port, foreign_key: true
  end
end
