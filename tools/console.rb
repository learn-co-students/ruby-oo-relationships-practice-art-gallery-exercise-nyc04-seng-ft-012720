require_relative '../config/environment.rb'

graham = Artist.new("Graham", 29)
georgia = Artist.new("Georgia O'Keefe", 59)
frida = Artist.new("Frida Kahlo", 30)
jemy = Artist.new("Jemy Chen", 99)

phyllis_kind_gallery = Gallery.new("Phyllis Kind Gallery", "Chicago, IL")
met = Gallery.new("Teh Met", "NYC, NY")

scream_3 = Painting.new("Scream 3", 18_000, graham, phyllis_kind_gallery)
scream = Painting.new("Scream", 87_000, jemy, met)
scream_2 = Painting.new("Scream 2", 187_000, jemy, met)
starry_night = Painting.new("Starry Night", 7_000, frida, phyllis_kind_gallery)
flower = Painting.new("Flower", 1_000_000, georgia, phyllis_kind_gallery)

# p Artist.most_prolific

# hello = georgia.create_painting("hello", 12, met)
# p Painting.all

# p Painting.total_price

p met.most_expensive_painting