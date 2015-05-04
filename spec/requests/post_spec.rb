require 'rails_helper'

RSpec.describe "post pages", type: :request do
  context 'index' do
    let!(:post_model) { create :post }
    it "succes" do
      get "/posts"
      expect(response).to be_success
    end
  end

  context 'show' do
    let(:post_model) { create :post }
    it "succes" do
      get "/posts/#{post_model.id}"
      expect(response).to be_success
    end
  end

  context 'new' do
    it "succes" do
      get "/posts/new"
      expect(response).to be_success
    end
  end

  context 'edit' do
    let(:post_model) { create :post }
    it "succes" do
      get "/posts/#{post_model.id}/edit"
      expect(response).to be_success
    end
  end

  context 'update' do
    let(:post_model) { create :post }
    let(:attrs) { attributes_for :post }

    it "succes" do
      patch "/posts/#{post_model.id}", post: attrs
      expect(response).to be_redirect
    end
  end

  context 'create' do
    let(:attrs) { attributes_for :post }

    it "succes" do
      post "/posts", post: attrs
      expect(response).to be_redirect
    end
  end

  context 'destroy' do
    let(:post_model) { create :post }

    it "succes" do
      delete "/posts/#{post_model.id}"
      expect(response).to be_redirect
    end
  end

end