class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id

    if @post.save
      redirect_to @post, success: 'Your post was created successfully'
    else
      redirect_to new_post_path, danger: 'All fields must be filled'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to @post, success: 'Your post was edited successfully'
    else
      redirect_to edit_post_path, danger: 'All fields must be filled'
    end
  end

  def destroy
    @post.delete
    redirect_to posts_path, success: 'Your post was deleted successfully'
  end

  private

  def post_params
    params.require(:post).permit(:date, :rationale)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
