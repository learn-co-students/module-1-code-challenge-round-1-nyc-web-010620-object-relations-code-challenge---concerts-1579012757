class Venue
    attr_accessor :title
    attr_reader :city
    @@all = []

    def initialize(title, city)
        @title = title
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end
end

def concert
    concert.all.select do |concert|
      concert.band == self
    end
  end

  def venue
    self.concert.map do |concert|
      concert.venue
    end
  end

  def self.all
    @@all
  end

def concert_on ("1977") 
     

