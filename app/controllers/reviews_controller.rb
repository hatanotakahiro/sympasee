class ReviewsController < ApplicationController
  before_action :authenticate_user!, except: [ :index]
  before_action :set_movie

  def new
    @review_process = ReviewProcess.new
  end

  def create
    @review_process = ReviewProcess.new(review_process_params)
    if @review_process.valid?
      @review_process.save
      redirect_to movie_path(@movie.id)
    else
      render :new
    end
  end

  def show
    @review = Review.find(params[:id])
  end

  def destroy
    @review = Review.find(params[:id])

    user_story = (@review.review_status.review_story.to_i - 5).abs
    user_impact = (@review.review_status.review_impact.to_i - 5).abs
    user_impressed = (@review.review_status.review_impressed.to_i - 5).abs
    user_happy = (@review.review_status.review_happy.to_i - 5).abs
    user_character = (@review.review_status.review_character.to_i - 5).abs
    user_beautiful = (@review.review_status.review_beautiful.to_i - 5).abs
    user_score = (@review.review_status.review_score.to_i)/2
    UserStatus.create(user_story: user_story, user_impact: user_impact, user_impressed: user_impressed, user_happy: user_happy, user_character: user_character, user_beautiful: user_beautiful, user_score: user_score, user_id: @review.user_id)

    @review.destroy
    redirect_to movie_path(@movie.id)
  end

private
  def review_process_params
    params.require(:review_process).permit(:review_text, :movie_id, :review_story, :review_impact, :review_impressed, :review_happy, :review_character, :review_beautiful, :review_score).merge(user_id: current_user.id)
  end

  def set_movie
    @movie = Movie.find(params[:movie_id])
  end
end
