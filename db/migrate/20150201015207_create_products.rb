class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :volume
      t.integer :quantity
      t.float :price
      t.date :sell_by

      t.timestamps null: false
    end
  end
end
