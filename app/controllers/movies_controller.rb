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
      @movie = Movie.new
      @categories = Category.all.map {|c|[c.name, c.id]}
    end
   
    def create
      @movie = Movie.new(movie_params)
      @movie.category_id = params[:category_id]
      
      if @movie.save
        redirect_to root_path, notice: 'movie has been created successfully'
      else
        render :new
      end
    end

    def edit
      @categories = Category.all.map {|c|[c.name, c.id]}
    end

    def update
      @movie.category_id = params[:category_id]
      if @movie.update(movie_params)
       redirect_to movie_path(@movie)
      else
        render 'edit'
      end
    end

    def destroy
      @movie.destroy
      redirect_to root_path
    end
    
    
    private
    
    def movie_params
      params.require(:movie).permit(:title, :description, :category_id, :movie_image)
    end

    def set_movie
      @movie = Movie.friendly.find(params[:id])
    end
end