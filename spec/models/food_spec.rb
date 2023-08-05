require 'rails_helper'

RSpec.describe Food, type: :model do
  subject(:food) { described_class.new(name: "apple", measurement_unit: "pcs", price: 1.99) }

  # Asociations
  it { should have_many(:recipe_foods).dependent(:destroy) }

  # Validations
  it { should validate_presence_of(:name) }
  it { should validate_length_of(:name).is_at_least(2).is_at_most(50) }
  it { should validate_presence_of(:measurement_unit) }
  it { should validate_length_of(:measurement_unit).is_at_least(2).is_at_most(12) }
  it { should validate_numericality_of(:price).is_greater_than_or_equal_to(0) }
end

