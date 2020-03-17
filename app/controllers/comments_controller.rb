class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    Comment.create(comment_params)
    redirect_to root_path
  end

  def edit

  end

  def update

  end

  def show

  end

  private


  def comment_params
    params.require(:comment).permit(:chronological, :message).merge(user_id: current_user.id)
  end


end
