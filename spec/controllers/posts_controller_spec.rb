require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  before do
    create_list(:post, 2)
  end

  describe '#index' do
    it 'assigns @posts' do
      get :index
      expect(assigns(:posts)).to eq Post.all
    end
  end

  describe '#show' do
    before do
      get :show, id: Post.first
    end

    it 'assigns the correct @post' do
      expect(assigns(:post)).to eq Post.first
    end
  end
end
