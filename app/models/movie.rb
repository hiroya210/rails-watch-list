class Movie < ApplicationRecord
    has_many :bookmarks

    validates :title, :overview, presence: true
    validates :title, :overview, uniqueness: true

    def shorten_overview
      return self.overview.first(150) if self.overview.length >= 150
    end     

end
