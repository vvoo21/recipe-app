require 'rails_helper'

RSpec.describe RecipeFood, type: :model do
  let(:recipe) { FactoryBot.create(:recipe) }
  let(:food) { FactoryBot.create(:food) }
  subject(:recipe_food) { described_class.new(recipe: recipe, food: food, quantity: 2) }
end

