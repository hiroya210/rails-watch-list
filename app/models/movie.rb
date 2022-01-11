class Movie < ApplicationRecord
    has_many :bookmarks

    validates :title, uniqueness: true, presence: true
    validates :overview, uniqueness: true, presence: true

    def shorten_overview
      return self.overview.first(150) if self.overview.length >= 150
    end     

end
