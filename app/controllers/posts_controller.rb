class PostsController < ApplicationController
	before_action :find_post, except: [:index, :new, :create]

  def index
  	@posts = Post.ordered_by_date
  end

  def show
  end

  def new
  	@post = Post.new
  end

  def create
  	@post = Post.create(post_params)
  	if @post.save
  		flash[:success] = "Post Published"
      render json: @post
  	else
  		flash[:danger] = @post.errors.full_messages.join('<br />').html_safe
  		render :new
  	end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      render json: @post
    else
      render json: { errors: @post.errors.full_messages.join('<br />').html_safe }
    end
  end

  def destroy
    @post.destroy
    render json: true
  end

  private

  def find_post
  	@post = Post.find(params[:id])
  end

  def post_params
  	params.require(:post).permit(:title, :body)
  end
end
