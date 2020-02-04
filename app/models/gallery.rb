class Gallery 
    @@all = []
    attr_accessor :city

    def initialize(city)
    @city = city
    @@all << self 
    end  

    def self.all 
      @@all 
    end 

    def paintings
      Painting.all.select{|painting|painting.gallery == self}
    end 

    def artists 
      self.paintings.map{|painting|painting.artist}
    end 

    def artist_names
        self.paintings.map{|painting|painting.artist.name}
    end 

    def most_expensive_painting
      self.paintings.max_by{|painting| painting.price}
    end 



end 