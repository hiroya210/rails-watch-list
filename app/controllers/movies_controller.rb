class MoviesController < ApplicationController
    
    def index
        @movies = Movie.all
      unless params[:search_movie] == ""
        @movies = @movies.where("LOWER(title) like ?","%#{params[:search_movie].to_s.downcase}%")
      else
        @movies = Movie.all
      end
    end
end
