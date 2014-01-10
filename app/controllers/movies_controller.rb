class MoviesController < ApplicationController
  def index
    @movies = Movie.all.to_a
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(params.require(:movie).permit(:name))
    if @movie.save
      redirect_to movies_path
    else
      render 'new'
    end
  end
end
