require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(name: 'vanessa', photo: 'https://pixabay.com/photos/cat-baby-profile-animal-shelter-2671159/', bio: 'A passionate full-stack developer', posts_count: 0) }

  before { subject.save }

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:bio) }
    it { should validate_length_of(:bio).is_at_least(2) }
    it { should validate_length_of(:bio).is_at_most(250) }
    it { should validate_numericality_of(:posts_count).is_greater_than_or_equal_to(0).only_integer }
  end

  it 'has many recipes' do
    post1 = subject.posts.new(title: 'Hello Rails', text: 'This is my first post.')
    post1.save
    post2 = subject.posts.new(title: 'Goodbye Rails', text: 'This is my last post.')
    post2.save

    expect(subject.posts).to eq([post1, post2])
  end
end
