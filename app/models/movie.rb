# frozen_string_literal: true

class Movie < ApplicationRecord
  has_many :bookmarks

  validates :title, uniqueness: true, presence: true
  validates :overview, uniqueness: true, presence: true

  def shorten_overview
    return overview.first(150) if overview.length >= 150
  end
end
