class ModifyOgrnAndInnType < ActiveRecord::Migration[7.0]
  def change
    change_table :producers do |t|
      t.change :ogrn, :bigint
      t.change :inn, :bigint
    end
  end
end
