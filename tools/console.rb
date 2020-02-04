require_relative '../config/environment.rb'

artist_one = Artist.new(20)
artist_two = Artist.new(15)
artist_three = Artist.new(10)

gallery_one = Gallery.new("New York")
gallery_two = Gallery.new("Samarqand")
gallery_three = Gallery.new("New York")

paint_one = Painting.new("Batman",30,gallery_one,artist_one)
paint_two = Painting.new("Superman",50,gallery_two,artist_one)
paint_three = Painting.new("Spiderman",60,gallery_three,artist_two)




binding.pry