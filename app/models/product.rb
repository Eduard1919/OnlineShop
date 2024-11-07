class Product < ApplicationRecord
    belongs_to :producer
    has_and_belongs_to_many :categories
    has_many :orders
    has_many :wishlists, through: :orders
end
