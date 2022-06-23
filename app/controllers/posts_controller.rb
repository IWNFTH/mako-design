class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :update]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
    redirect_to root_path
  end

  def edit
  end

  def update
    @post.update(post_params)
    if @post.save
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def post_params
    params.require(:post).permit(:name, :text)
  end

  def set_post
    @post = Post.find(params[:id])
  end

end
