class Painting

  attr_reader :title, :price, :artist, :gallery

  ALL = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    ALL << self
  end

  def self.all 
    ALL
  end

  def self.total_price
    total = 0
    Painting.all.each do |painting|
      total += painting.price
    end
    total
  end




end
