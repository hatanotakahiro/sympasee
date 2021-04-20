class MoviesController < ApplicationController
  before_action :authenticate_user!, except: [ :index, :show]
  before_action :set_movie, only: [:show, :edit, :update, :destroy]
  before_action :admin?, only: [:new, :create, :edit, :update, :destroy]
  
  def index
    movies = Movie.includes(:user).order("created_at DESC")
    @movies = movies.page(params[:page]).per(8)
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

  private
  def movie_params
    params.require(:movie).permit(:movie_title, :movie_text, :long, :release_date, :producer, :character, :movie_image).merge(user_id: current_user.id)
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
