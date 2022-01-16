require "json"
require "open-uri"

Review.destroy_all
List.destroy_all

url = "http://tmdb.lewagon.com/movie/top_rated"
movies = JSON.parse(URI.open(url).read)

movies["results"].each do |result|
  Movie.create(
    title: result["title"], 
    overview: result["overview"], 
    poster_url: "https://image.tmdb.org/t/p/original#{result["poster_path"]}", 
    backdrop_url: "https://image.tmdb.org/t/p/original#{result["backdrop_path"]}",
    rating: result["vote_average"]
  )
end

puts "Creating Seeds"
file1 = URI.open('https://res.cloudinary.com/yahiro/image/upload/v1641892089/rails%20watchlist/toprated.jpg')
seed1 = List.new( name: "Top Rated")
seed1.photo.attach(io: file1, filename: 'toprated.jpg', content_type: 'image/jpg')
seed1.save
puts "Seed 1 done!"

file2 = URI.open("https://res.cloudinary.com/yahiro/image/upload/v1641892089/rails%20watchlist/superhero.png")
seed2 = List.new( name: "SuperHeroes")
seed2.photo.attach(io: file2, filename: 'superhero.png', content_type: 'image/png')
seed2.save
puts "Seed 2 done!"

file3 = URI.open("https://res.cloudinary.com/yahiro/image/upload/v1641892089/rails%20watchlist/drama.jpg")
seed3 = List.new( name: "Drama")
seed3.photo.attach(io: file3, filename: 'drama.jpg', content_type: 'image/jpg')
seed3.save
puts "Seed 3 done!"


file4 = URI.open("https://res.cloudinary.com/yahiro/image/upload/v1641892089/rails%20watchlist/classic.jpg")
seed4 = List.new( name: "classic")
seed4.photo.attach(io: file4, filename: 'classic.jpg', content_type: 'image/jpg')
seed4.save
puts "Seed 4 done!"


file5 = URI.open("https://res.cloudinary.com/yahiro/image/upload/v1641892088/rails%20watchlist/asian.jpg")
seed5 = List.new( name: "asian")
seed5.photo.attach(io: file5, filename: 'asian.jpg', content_type: 'image/jpg')
seed5.save
puts "Seed 5 done!"
