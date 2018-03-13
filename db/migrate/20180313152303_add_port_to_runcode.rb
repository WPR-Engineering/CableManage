class AddPortToRuncode < ActiveRecord::Migration[5.1]
  def change
    add_column :runcodes, :port, :has_one, index: true
  end
end
