class Web::PostsController < Web::ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new

  end

  def create
    Post.create(params[:post].permit(:title, :content))
    redirect_to posts_path
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    Post.update(post, params[:post].permit(:title, :content))
    redirect_to posts_path
  end

  def destroy
    Post.find(params[:id]).destroy!
    redirect_to posts_path
  end
end