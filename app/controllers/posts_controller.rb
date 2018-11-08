class PostsController < ApplicationController

  def index
@post = Post.all
  end

def new
  @post = Post.new
end

def show
  @post = Post.find(params[:id])
end

  def create
    # render plaine: params[:post].inspect
  @post = Post.new(post_params)

  if (@post.save)
    redirect_to @post
  else render 'new'
    end
  end

  private def  post_params
    params.require(:post).permit(:title, :body)
  end
end

