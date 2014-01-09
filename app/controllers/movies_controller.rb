class MoviesController < ApplicationController
  def index
    @movies = Movie.all.to_a
  end
  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.create(params.require(:movie).permit(:name))
    redirect_to movies_path
  end
end
