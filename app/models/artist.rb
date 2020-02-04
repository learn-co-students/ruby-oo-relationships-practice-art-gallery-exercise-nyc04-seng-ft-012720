class Artist 
  @@all = []

  attr_accessor :experience, :name

  def initialize(experience)
  @experience = experience
  @@all << self
  end 

  def self.all 
    @@all 
  end 

  def paintings
     Painting.all.select{|painting|painting.artist == self}
  end

  def galleries 
    self.paintings.map{|painting|painting.gallery}
  end 

  def cities
    self.paintings.map{|painting|painting.gallery.city}
    #self.galleries.map{|gallery| gallery.city}
  end 

  def self.total_experience 
        @@all.reduce(0){|sum,artist|sum + artist.experience}
  end 

  def self.most_prolific
      @@all.max_by{|artist| artist.paintings.length.to_f/artist.experience.to_f}
  end 

  def create_painting(title,price,gallery)
    Painting.new(title,price,gallery,self)
  end 

end 

