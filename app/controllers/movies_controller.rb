class MoviesController < ApplicationController
    def index
      @movies = Movie.all
    end

    def show
      @movie = Movie.friendly.find(params[:id])
    end
end