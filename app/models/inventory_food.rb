class InventoryFood < ApplicationRecord
  validates :food_id, uniqueness: { scope: :inventory_id }
  validates_numericality_of :quantity, only_integer: true, greater_than_or_equal: 0
  belongs_to :inventory
  belongs_to :food
end
