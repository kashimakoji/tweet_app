class PostsController < ApplicationController
  #before_action :set_post, only: [:]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
     redirect_to new_post_path, notice: "新規メッセージを投稿しました"
    else
      render :new
    end
  end

end

private
def post_params
  params.require(:post).permit(:content)
end

def set_post
  @post = Post.find(params[:id])
end