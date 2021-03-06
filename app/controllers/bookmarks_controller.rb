# frozen_string_literal: true

class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
    @list = List.find(params[:list_id])
  end

  def create
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = @list
    movie = Movie.find(@bookmark.movie_id)
    if @bookmark.save
      flash[:alert] = "Added \"#{movie.title}\""
      redirect_to list_path(@list)
    else
      render 'new'
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    movie = Movie.find(@bookmark.movie_id)
    flash[:remove] = "\"#{movie.title}\" removed from the list"
    @bookmark.destroy

    redirect_to list_path(@bookmark.list)
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id, :list_id)
  end
end
