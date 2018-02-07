class CreateRuncodes < ActiveRecord::Migration[5.1]
  def change
    create_table :runcodes do |t|
      t.integer :code
      t.text :description
      t.references :wire, foreign_key: true
      t.references :terminal, foreign_key: true
      t.references :device, foreign_key: true

      t.timestamps
    end
  end
end
