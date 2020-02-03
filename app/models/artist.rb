class Artist

  @@all = [] 

  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def create_painting(title, price, gallery)
    # initialize(title, price, gallery, artist)
    Painting.new(title, price, gallery, self)
  end

  def self.total_experience
    self.all.sum{|artist| artist.years_experience}
    # what .map does => [a1, a2] => [12, 50]
    # what .sum does => adds those two numbers together
    # self.all.map{|artist| artist.years_experience}.sum
  end

  def self.most_prolific
    self.all.max_by{|artist| artist.average_paintings_per_year}
  end

  def average_paintings_per_year
    self.paintings.length.to_f/self.years_experience.to_f
  end

  def paintings
    # There is an array of paintings in the paintings class
    # Painting.all
    # We have to return all the paintings by a specific artist(self)
    Painting.all.select{|painting| painting.artist == self}
  end

  def galleries
    # find an array of all the galleries in which an artist has paintings

    # get a list of all the artist's paintings
    self.paintings.map{|painting| painting.gallery}.uniq
    # find the galleries from them
  end

  def cities
    # - Get a list of self's galleries
    self.galleries.map{|gallery| gallery.city}
    # - Return a list of cities
  end

end
