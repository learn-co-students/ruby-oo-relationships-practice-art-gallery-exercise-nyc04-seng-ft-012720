class Artist

  @@all = []

  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
    # @paintings = paintings
  end

  def paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
    # @paintings
  end

  def galleries
    # Gallery.all.select do |galleries|
    #   galleries.artists
    # end

    # paintings.map do |painting|
    #   painting.gallery
    # end

    # galleries = []
    # Painting.all.each do |painting|
    #   if painting.artist == self
    #     galleries << painting.gallery
    #   end
    # end
    # galleries

    # paintings.gallery == 

    # Painting.all.map do ||

    # end
    # paintings.map do |painting|
    #   painting.gallery
    # end
    paintings.map(&:gallery).uniq
  end

  def self.all
    @@all
  end

end
