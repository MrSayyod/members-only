class PostsController < ApplicationController
  # before_action :require_login, only: [:new, :create]

  def new
    @post = Post.new
  end


  def create
    @post = Post.new(post_params)
    @post.save
    flash.notice = "Post '#{@post.title}' Created!"
    redirect_to posts_path
  end

  def index
    @posts = Post.all
  end
end

 private
 def post_params

params.require(:post).permit(:title, :post )

 end