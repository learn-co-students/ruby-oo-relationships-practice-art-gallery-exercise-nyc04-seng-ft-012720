class Artist

  ALL = []
  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    ALL << self 
  end
  
  def self.all 
    ALL
  end

  def paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def galleries
    paintings.map do |painting|
      painting.gallery
    end.uniq
  end

  def cities
    galleries.map do |gallery|
      gallery.city
    end
  end
  
  def self.total_experience
    total_years = 0
    Artist.all.each do |artist|
      total_years += artist.years_experience
    end
    total_years
  end

  def self.most_prolific
    Artist.all.min_by do |artist|
      artist.years_experience / artist.paintings.length
    end
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

end
