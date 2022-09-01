class CommentsController < ApplicationController
  before_action :set_dog, only: [:new, :create]

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.dog = Dog.find(params[:dog_id])
  if @comment.save
    redirect_to dog_path(@dog)
  end
  end

  # def destroy
  #   @comment = Comment.find(params[:id])
  #   @comment.destroy
  #   redirect_to comment_params, status: :see_other
  # end

  private

  def comment_params
    params.require(:comment).permit(:content, :user_id, :dog_id)
  end

  # def set_comment
  #   @comment = Comment.find(params[:id])
  # end

  def set_dog
    @dog = Dog.find(params[:dog_id])
  end
end
