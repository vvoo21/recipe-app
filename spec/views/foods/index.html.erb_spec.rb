require 'rails_helper'

RSpec.describe 'foods/index', type: :view do
  # Asignar el user_id al crear los objetos food
  let(:food4) { Food.create(name: 'apple', measurement_unit: 'grams', price: 3) }
  let(:food5) { Food.create(name: 'rice', measurement_unit: 'grams', price: 2) }
  let(:food6) { Food.create(name: 'milk', measurement_unit: 'liter', price: 1.25) }
  before(:each) do
    assign(:foods, [food4, food5, food6])
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
end
