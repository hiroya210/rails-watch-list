# frozen_string_literal: true

class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    @movies = if params[:search_movie] == ''
                Movie.all
              else
                @movies.where('LOWER(title) like ?', "%#{params[:search_movie].to_s.downcase}%")
              end
  end

  def show
    @movie = Movie.find(params[:id])
  end
end
