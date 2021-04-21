class ReviewsController < ApplicationController

  before_action :set_movie

  def index
    @review_process = ReviewProcess.new
  end

  def new
    @review_process = ReviewProcess.new
  end

  def create
    @review_process = ReviewProcess.new(review_process_params)
    binding.pry
    if @review_process.valid?
      @review_process.save
      redirect_to root_path
    else
      render :index
    end
  end

private
  def review_process_params
    params.require(:movie).permit(:review_text, :movie_id, :review_story, :review_impact, :review_impressed, :review_happy, :review_character, :review_beautiful, :review_score).merge(user_id: current_user.id)
  end

  def set_movie
    @movie = Movie.find(params[:movie_id])
  end
end
