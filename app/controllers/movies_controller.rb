class MoviesController < ApplicationController
  def index
    @movies = Movie.all.to_a
  end
  def new

  end
end
