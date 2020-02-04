class Gallery

  ALL = []
  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
    ALL << self
  end
  
  def self.all 
    ALL
  end

  def paintings
    Painting.all.select do |painting|
      painting.gallery == self
    end
  end
  
  def artists
    paintings.map do |painting|
      painting.artist
    end
  end

  def artist_names
    artists.map do |artist|
      artist.name
    end
  end

  def most_expensive_painting
    paintings.max_by do |painting|
      painting.price
    end
  end

end
