require_relative '../config/environment.rb'

a1 = Artist.new("batman", 12)
g1 = Gallery.new("Gotham Museum", "Gotham")
p1 = Painting.new("Darkness", 12, g1, a1)
p2 = Painting.new("Robin", 15, g1, a1)
g2 = Gallery.new("Metropolis Modern Art Museum", "Metropolis")
a2 = Artist.new("Superman", 50)
p3 = Painting.new("Portrait of my best friend", 20, g1, a2)
puts "Gallery.all works:"
puts Gallery.all.first.name == "Gotham Museum"
puts "Painting.all works:"
puts Painting.all.length == 3
puts "Painting.total_price works:"
puts Painting.total_price == 47
puts "Gallery#paintings works:"
puts g1.paintings.length == 3 
puts "Gallery#artist_names works:"
puts g1.artist_names == ["batman", "Superman"]
puts "Gallery#most_expensive_painting works:"
puts g1.most_expensive_painting == p3
puts "Artist.all works:"
puts Artist.all.length == 2
puts "Artist#paintings works:"
puts a1.paintings.length == 2
puts a2.paintings.length == 1
puts "Artist.total_experience works:"
puts Artist.total_experience == 62
puts "Artist.most_prolific.name works:"
puts Artist.most_prolific.name == "batman"
puts "Artist#create_painting works:"
p4 = a2.create_painting("Wait so Boom", 25, g1)
puts p4.class == Painting
puts "Bob Ross rules."
