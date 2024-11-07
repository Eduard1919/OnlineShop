class AddUserIdToWishlist < ActiveRecord::Migration[7.0]
  def change
    add_column :wishlists, :user_id, :integer
  end
end
