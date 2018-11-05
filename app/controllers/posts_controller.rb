class PostsController < ApplicationController
def index
  end

  def new

  end

  def create
    # render plaine: params[:post].inspect
  @post = Post.new(params[:post])
  end
end

