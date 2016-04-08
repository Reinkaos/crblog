require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'Validation' do
    it 'is invalid without a Title' do
      post = Post.new(title: nil)
      post.valid?
      expect(post.errors[:title]).to include("can't be blank")
    end

    it 'is invalid without a Body' do
      post = Post.new(body: nil)
      post.valid?
      expect(post.errors[:body]).to include("can't be blank")
    end

    it 'can be valid' do
      expect(create(:post)).to be_valid
    end
  end

  describe 'Associations' do
    it 'belongs to a user' do
      user = create(:user, :post)

      expect(Post.last.user).to eq user
    end
  end
end
