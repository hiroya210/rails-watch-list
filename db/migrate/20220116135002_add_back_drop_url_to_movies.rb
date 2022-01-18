# frozen_string_literal: true

class AddBackDropUrlToMovies < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :backdrop_url, :string
  end
end
