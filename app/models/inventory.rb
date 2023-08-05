class Inventory < ApplicationRecord
  belongs_to :user, class_name: 'User'
  has_many :inventory_foods, dependent: :destroy
end
