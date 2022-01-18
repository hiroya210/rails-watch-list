# frozen_string_literal: true

require 'json'
require 'open-uri'
require 'faker'

Bookmark.destroy_all
Movie.destroy_all
Review.destroy_all
List.destroy_all

puts 'Creating Movies'
num = 0
5.times do
  url = "https://api.themoviedb.org/3/movie/top_rated?api_key=#{ENV['API_KEY']}&language=en-US&page=#{num += 1}"
  movies = JSON.parse(URI.open(url).read)

  movies['results'].each do |result|
    Movie.create(
      title: result['title'],
      overview: result['overview'],
      poster_url: "https://image.tmdb.org/t/p/original#{result['poster_path']}",
      backdrop_url: "https://image.tmdb.org/t/p/original#{result['backdrop_path']}",
      rating: result['vote_average']
    )
  end
end
puts 'Done!'

# Lists

puts 'Creating Lists'
file1 = URI.open('https://res.cloudinary.com/yahiro/image/upload/v1641892089/rails%20watchlist/toprated.jpg')
list1 = List.new(name: 'Top Rated')
list1.photo.attach(io: file1, filename: 'toprated.jpg', content_type: 'image/jpg')
list1.save
puts 'list 1 done!'

file2 = URI.open('https://res.cloudinary.com/yahiro/image/upload/v1641892089/rails%20watchlist/superhero.png')
list2 = List.new(name: "Everyone's Favorite")
list2.photo.attach(io: file2, filename: 'superhero.png', content_type: 'image/png')
list2.save
puts 'list 2 done!'

file3 = URI.open('https://res.cloudinary.com/yahiro/image/upload/v1641892089/rails%20watchlist/drama.jpg')
list3 = List.new(name: 'My Recomendation')
list3.photo.attach(io: file3, filename: 'drama.jpg', content_type: 'image/jpg')
list3.save
puts 'list 3 done!'

file4 = URI.open('https://res.cloudinary.com/yahiro/image/upload/v1641892089/rails%20watchlist/classic.jpg')
list4 = List.new(name: 'Old but Gold')
list4.photo.attach(io: file4, filename: 'classic.jpg', content_type: 'image/jpg')
list4.save
puts 'list 4 done!'

file5 = URI.open('https://res.cloudinary.com/yahiro/image/upload/v1641892088/rails%20watchlist/asian.jpg')
list5 = List.new(name: 'Random')
list5.photo.attach(io: file5, filename: 'asian.jpg', content_type: 'image/jpg')
list5.save
puts 'list 5 done!'

# Bookmarks

puts 'Creating bookmarks'
movie_id = 1
lists = [list1, list2, list3, list4, list5]

lists.each do |list|
  10.times do
    Bookmark.create(movie_id: Movie.all.sample.id, list_id: list.id, comment: Faker::GreekPhilosophers.quote)
  end
end

puts 'Bookmarks done!'
