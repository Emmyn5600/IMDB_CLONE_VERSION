class HomeController < ApplicationController
  def index
    @q =  Movie.ransack(params[:q])
    @movies = @q.result(distinct: true).page(params[:page]).includes(:category)
  end
end
