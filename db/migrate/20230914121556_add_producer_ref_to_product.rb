class AddProducerRefToProduct < ActiveRecord::Migration[7.0]
  def change
    add_reference :products, :producer, null: true, foreign_key: true
  end
end
