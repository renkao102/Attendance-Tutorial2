class PostsController < ApplicationController
  def index1
    @posts = Post.all
  end
end
