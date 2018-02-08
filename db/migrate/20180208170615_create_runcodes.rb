class CreateRuncodes < ActiveRecord::Migration[5.1]
  def change
    create_table :runcodes do |t|
      t.integer :runcode
      t.text :description

      t.timestamps
    end
  end
end
