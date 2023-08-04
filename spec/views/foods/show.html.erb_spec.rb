require 'rails_helper'

RSpec.describe 'foods/show', type: :view do
  let(:food1) { Food.create(name: 'apple', measurement_unit: 'grams', price: 3) }
  before(:each) do
    assign(:food, food1)
    render
  end

  it "displays a food's name" do
    expect(rendered).to have_content(food1.name)
  end

  it "displays the food's measurement_unit" do
    expect(rendered).to have_content(food1.measurement_unit)
  end

  it "displays the food's price" do
    expect(rendered).to have_content(food1.price)
  end

  it "is redirected to foods index page." do
    expect(rendered).to have_link('Back to foods', href: foods_path)
  end
end
