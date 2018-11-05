class PostsController < ApplicationController
def index
  end

  def new

  end

  def create
    render plaine: params[:post].inspect
  end
end

