class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.string :description
      t.integer :price , default: 0
      t.string :make

      t.timestamps
    end
  end
end
