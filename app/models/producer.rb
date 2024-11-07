class Producer < ApplicationRecord
    has_many :products

    scope :mass_producer, 
    -> { joins(:products).group(:id).having('count(*) > 5') }
end
