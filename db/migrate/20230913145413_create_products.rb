class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name, null: false, limit: 32
      t.string :full_name, null: false, limit: 256
      t.decimal :price, null: false, scale: 2, precision: 8
      t.text :description
      t.date :production_date, null: false
      t.integer :guarantee, null: false

      t.timestamps
    end
    add_check_constraint :products, 'price > 0', name: 'price_check'
    add_check_constraint :products, 'guarantee IN(0, 1)', name: 'guarantee_check'
  end
end
