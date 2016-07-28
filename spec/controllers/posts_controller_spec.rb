require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  let(:post) { FactoryGirl.create(:post)}
  let(:post2) { FactoryGirl.create(:post)}
  before(:each) do
    post
    post2
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it "assigns posts instance variable" do
      get :index
      expect(assigns(:posts)).to eq([post2, post])
    end

    it "render index template" do
      get :index
      expect(response).to render_template(:index)
    end
  end

  describe "GET #show" do
    before(:each) do
      get :show, id: post.id
    end

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it "assigns post instance variable" do
      expect(assigns(:post)).to eq(post)
    end

    it "renders show template" do
      expect(response).to render_template(:show)
    end
  end

  describe "GET #new" do
    before(:each) do
      get :new
    end

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it "creates new post instance" do
      expect(assigns(:post)).to be_truthy
      expect(assigns(:post).id).to be_nil
    end

    it "renders new template" do
      expect(response).to render_template(:new)
    end
  end

  describe "POST #create" do
    context "passing parameters" do
      before(:each) do
        @current_count = Post.count
        @params = { title: "title", body: "body" }
        post :create, post: @params
      end

      it "returns http redirect" do
        expect(response).to have_http_status(:success)
      end

      it "assigns new post to instance variable" do
        expect(assigns(:post).title).to eq(@params[:title])
        expect(assigns(:post).id).to be_truthy
      end

      it "creates new post" do
        expect(Post.count).to eq(@current_count + 1) 
      end
    end

    context "failing parameters" do
      before(:each) do
        @current_count = Post.count
        @params = { title: nil }
        post :create, post: @params
      end

      it "returns http success" do
        binding.pry
      end
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit
      expect(response).to have_http_status(:success)
    end
  end

  describe "PUT #update" do
  end

  describe "DELET #destroy" do
  end

end
