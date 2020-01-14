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
        Concert.all.select do |con|
            con.venue == self
        end
    end

    def bands
        self.concerts.map do |con|
            con.band
        end
    end

    def concert_on(day)
        date = self.concerts.find do |con|
            con.date
        end
        if day = date
        return true
        else return false
        end
    end

    def most_frequent_band
        concert_of = self.concerts.max_by do |con|
            con.band
        end
        concert_of.band
    end
    
    
end