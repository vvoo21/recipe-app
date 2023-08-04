require 'rails_helper'

RSpec.describe 'foods/index', type: :view do
  let(:food1) { Food.create(name: 'apple', measurement_unit: 'grams', price: 3) }
  let(:food2) { Food.create(name: 'rice', measurement_unit: 'grams', price: 2) }
  let(:food3) { Food.create(name: 'milk', measurement_unit: 'liter', price: 1.25) }
  before(:each) do
    assign(:foods, [food1, food2, food3])
  end

  it 'displays foodname of each food' do
    render
    Food.all.each do |food|
      expect(rendered).to have_content(food.name)
    end
  end

  it 'displays price of each food' do
    render
    Food.all.each do |food|
      expect(rendered).to have_content(food.price)
    end
  end

  it 'displays the measurement unit of each food' do
    render
    Food.all.each do |food|
      expect(rendered).to have_content(food.measurement_unit)
    end
  end

  it "has a link to each food's show page" do
    render
    Food.all.each do |food|
      expect(rendered).to have_link('See food', href: food_path(food))
    end
  end
end
