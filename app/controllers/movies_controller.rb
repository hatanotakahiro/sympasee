class MoviesController < ApplicationController
  def index
  end

  def new
    @movie = Movie.new
  end

  def create
  end
end
