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

    def concerts
        Concert.all.select |concert|
        concert.venue == self 
    end

    def bands
        self.concerts.map |concert|
        concert.band
    end

end



