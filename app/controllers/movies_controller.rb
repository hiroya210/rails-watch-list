class MoviesController < ApplicationController
    
    def index
        @movies = Movie.all
      unless params[:search_movie] == ""
        @movies = @movies.where("title like ?","%#{params[:search_movie].to_s.capitalize}%")
      else
        @movies = Movie.all
      end
    end
end
