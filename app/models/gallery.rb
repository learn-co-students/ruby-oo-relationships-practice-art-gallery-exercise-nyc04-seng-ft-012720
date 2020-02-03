class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end
  
  
  def paintings
    Painting.all.select{|painting| painting.gallery == self }
    
    # paintings = []
    # Painting.all.each do |painting|
    #   if painting.gallery == self
    #     paintings.push(painting)
    #   end
    # end
    # paintings
  end

  def artists

    # get all the paintings
    # convert those paintings into their artists
    # filter out duplicates

    self.paintings.map{|painting| painting.artist}.uniq
  end

  def artist_names
    # take instances of artists
    # self.artists

    # turn list of artists into list of names
    self.artists.map{|artist| artist.name}
  end

  def most_expensive_painting
    self.paintings.max_by do |painting|
      painting.price
    end
  end
  
  
end
