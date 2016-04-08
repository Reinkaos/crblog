require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validation' do
    it 'is invalid without a Name' do
      user = User.new(name: nil)
      user.valid?
      expect(user.errors[:name]).to include("can't be blank")
    end

    it 'can be valid' do
      expect(create(:user)).to be_valid
    end
  end

  describe 'Associations' do
    it 'has a post' do
      user = create(:user, :post)

      expect(user.posts.count).to eq 1
    end
  end
end
