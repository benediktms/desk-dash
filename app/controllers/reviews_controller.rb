class ReviewsController < ApplicationController
  before_action :find_space

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.space = @space
    if @review.save
      redirect_to space_path(@space)
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to space_path(@space)
  end

  private

  def find_space
    @space = Space.find(params[:space_id])
  end

  def review_params
    params.require(:review).permit(:content)
  end
end
