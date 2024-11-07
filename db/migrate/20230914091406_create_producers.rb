class CreateProducers < ActiveRecord::Migration[7.0]
  def change
    create_table :producers do |t|
      t.string :name, null: false, unique: true, limit: 128
      t.integer :ogrn, null: false, unique: true
      t.integer :inn, null: false, unique: true

      t.timestamps
    end
    add_check_constraint :producers, 'length(ogrn::text) = 13', name: 'ogrn_check'
    add_check_constraint :producers, 'length(inn::text) = 12', name: 'inn_check'
  end
end
