class Food < ApplicationRecord
  has_many :recipe_foods, dependent: :destroy
  has_many :inventory_foods, dependent: :destroy

  validates :name, presence: true, length: { in: 2..50 }
  validates :measurement_unit, presence: true, length: { in: 2..12 }
  validates :price, numericality: { only_integer: false, greater_than_or_equal_to: 0 }
end
