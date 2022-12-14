class HomeController < ApplicationController
  def index
    @movies = Movie.all.page(params[:page])
  end
end
