require 'rails_helper'

RSpec.describe 'foods/new', type: :view do
  let(:food) { Food.new }

  before(:each) do
    assign(:food, food)
    render
  end

  it "displays 'New food' heading" do
    expect(rendered).to have_selector('h1', text: 'NEW FOOD')
  end

  it 'has a link to go back to foods_path' do
    expect(rendered).to have_link('Back to foods', href: foods_path)
  end
end
