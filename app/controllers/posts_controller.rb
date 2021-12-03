class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by_id(params[:id])
    raise ArgumentError unless @post
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(create_params)
    @post.user = current_user
    raise ArgumentError unless @post.save
    return redirect_to "/posts/#{@post.id}"

  end

  def edit
    @post = current_user.posts.find_by_id(params[:id])
  end

  def update
    post.update(update_params)
    return redirect_to "/posts/#{post.id}"
  end

  def destroy
    post.delete
    return redirect_to "/posts/"
  end


  def create_params
    params.require(:post).permit(:title, :text)
  end

  def update_params
    params.require(:post).permit(:text)
  end

  def post
    current_user.posts.find_by_id(params[:id])
  end
end