class MoviesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show, :search, :rank]
  before_action :set_movie, only: [:show, :edit, :update, :destroy]
  before_action :admin?, only: [:new, :create, :edit, :update, :destroy]
  
  def index
    if params[:tag]
      movies = Movie.tagged_with(params[:tag]).order("created_at DESC")
      @movies = movies.page(params[:page]).per(8)
    else
      movies = Movie.includes(:user).order("created_at DESC")
      @movies = movies.page(params[:page]).per(8)
    end
    @new_movie = Movie.new
  end

  def rank
    # @story_ranks = Movie.find(Review.group(:review_story).order('avg(review_story) desc').pluck(:movie_id))
    @movies = Movie.includes(:user)
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    reviews = Review.where(movie_id: @movie.id).order("created_at DESC")
    @reviews = reviews.page(params[:page]).per(4)
  end

  def edit
  end

  def update
    if @movie.update(movie_params)
      redirect_to movie_path(@movie.id)
    else
      render :edit
    end
  end

  def destroy
    @movie.destroy
    redirect_to root_path
  end

  def search
    @movies = Movie.includes(:user).order("created_at DESC")
    @movies = @movies.tagged_with(movie_params[:tag_list], any: true).order("created_at DESC") | Movie.where('movie_title LIKE ?', "%#{movie_params[:tag_list]}%").order("created_at DESC")
  end

  private
  def movie_params
    params.require(:movie).permit(:movie_title, :movie_text, :long, :release_date, :producer, :character, :movie_image, :tag_list).merge(user_id: current_user.id)
  end

  def search_params
    params.require(:movie).permit(:movie_title, :tag_list)
  end

  def set_movie
    @movie = Movie.find(params[:id])
  end
  
  def admin?
    unless current_user.admin?
      redirect_to root_path
    end
  end

end
