class PostsController < ApplicationController
  def index
    @posts = Post.order(published_at: :desc)
  end

  def show
    @post = Post.find_by!(slug: params.expect(:id))
  end
end
