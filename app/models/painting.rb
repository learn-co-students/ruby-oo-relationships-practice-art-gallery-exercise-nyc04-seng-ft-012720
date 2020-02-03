class Painting

  attr_reader :title, :price, :gallery, :artist

  @@all = []

  def initialize(title, price, gallery, artist)
    @title = title
    @price = price
    @gallery = gallery
    @artist = artist
    @@all << self
  end

  def self.all
    @@all
  end

  def self.prices
    @@all.map{|painting| painting.price}
  end

  def self.total_price
    self.prices.sum

    # self.prices.reduce(:+)

    # all_prices = self.all.map{|painting| painting.price}
    # all_prices.reduce(:+) 

    # self.all.reduce(0) do |sum, painting|
    #   sum += painting.price
    # end

    # total = 0
    # self.all.each do |painting|
    #   total += painting.price
    # end
    # total

  end

end
