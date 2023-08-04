class Food < ApplicationRecord
  has_many :recipe_foods, dependent: :destroy
  has_many :recipes, through: :recipe_foods
  has_many :inventory_foods, dependent: :destroy
  has_many :inventories, through: :recipe_foods
  belongs_to :user, class_name: 'User'

  validates :name, presence: true, length: { in: 2..50 }
  validates :price, numericality: { only_integer: false, greater_than_or_equal_to: 0 }
  validates :measurement_unit, presence: true, length: { in: 2..12 }
end
