class PostController < ApplicationController

  def index
    @posts = Post.all
  end

  def create
    @post = Post.new(body: params[:post][:body], title: params[:post][:title])
    @post.save

    if @post.errors?
      got back to form
    else
      go to the new post
    end
  end
end
