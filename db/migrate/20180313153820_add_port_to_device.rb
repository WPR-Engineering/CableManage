class AddPortToDevice < ActiveRecord::Migration[5.1]
  def change
    add_column :devices, :port, :has_many, index: true
  end
end
