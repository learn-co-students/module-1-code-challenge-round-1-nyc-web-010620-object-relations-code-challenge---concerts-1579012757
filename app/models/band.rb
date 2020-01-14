class Band
    attr_accessor :name
    attr_reader :hometown
    @@all = []

    def initialize(name, hometown)
        @name = name
        @hometown = hometown
        @@all << self
    end

    def self.all
        @@all
    end
end

    def concerts
        Concert.all.select |concert|
        concert.band == self 
    end

    def venues
        self.concerts.map |concert|
        concert.venue
    end


    def all_introductions (name, hometown)
        puts "Hello {insert city name here}!!!!!, we are #{name} and we're from #{hometown}"
    end
        
end


