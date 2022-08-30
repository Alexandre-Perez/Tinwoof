class ReviewsController < ApplicationController
  before_action :set_review

  def index
    @review = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @review.save
    redirect_to review_path(@review)
  end

  def show
  end

  def edit
  end

  def update
    @review = Review.find(params[:id])
    @review.update(review_params)
    redirect_to review_path(@review)
  end
  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to review_params, status: :see_other
  end

  private

  def review_params
    params.require(:review).permit(:first_name)
  end

  def set_review
    @review = Review.find(params[:id])
  end
end
