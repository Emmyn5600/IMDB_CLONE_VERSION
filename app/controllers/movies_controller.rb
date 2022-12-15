class MoviesController < ApplicationController
  before_action :set_movie, only: %i[show edit update destroy]

    def index
        if params[:category].blank?
           @movies = Movie.all
         else
           @category_id = Category.find_by(name: params[:category]).id
           @movies = Movie.where(:category_id => @category_id).order("created_at DESC ")
        end
    end

    def show
     set_movie
    end

    def new
      @categories = Category.all.map {|c|[c.name, c.id]}
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