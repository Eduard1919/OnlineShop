class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :name, null: false, unique: true, limit: 32
      t.string :full_name, null: false, unique: true, limit: 32

      t.timestamps
    end
  end
end
