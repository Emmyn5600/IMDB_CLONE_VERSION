class MoviesController < ApplicationController
  before_action :set_movie, only: %i[show edit update destroy]

    def index
      @movies = Movie.all
    end

    def show
     set_movie
    end

    private

    def set_movie
      @movie = Movie.friendly.find(params[:id])
    end

    # def fetch_index_data
    #   @query = Movie.sanitize_sql_like(params[:query].to_s.strip.downcase)
    #   @page = params[:page] || 1
    #   @limit = params[:limit] || 4
    #   @movie = Movie.where('LOWER(movies.title) LIKE ?', "%#{@query}%").order(title: :asc).page(@page).per(@limit)
    # end
end