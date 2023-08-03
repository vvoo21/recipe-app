require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:recipes).dependent(:destroy) }
  it { should have_many(:foods).dependent(:destroy) }

 
  it { should validate_presence_of(:name) }
  it { should validate_length_of(:name).is_at_least(2).is_at_most(50) }

 
  it "includes Devise modules" do
    expect(User.devise_modules).to include(:database_authenticatable, :registerable, :recoverable, :rememberable, :validatable)
  end
end

