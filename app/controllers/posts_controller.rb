class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def create
    @post = Post.new(body: params[:post][:body], title: params[:post][:title])
    
    if @post.save
     # got back to form
    else
     # go to the new post
    end
  end
end
