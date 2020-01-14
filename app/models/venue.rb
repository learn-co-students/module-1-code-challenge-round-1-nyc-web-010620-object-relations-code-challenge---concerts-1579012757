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

    # i would use better names
    def concerts
        Concert.all.select do |con|
            con.venue == self
        end
    end
    
    # same here 
    def bands
        self.concerts.map do |con|
            con.band
        end
    end

    # refactor this 
    def concert_on(day)
        date = self.concerts.find do |con|
            con.date
        end
        # binding.pry
        if day = date
        return true
        else return false
        end
    end

    def most_frequent_band
        concert_of = self.concerts.max_by do |con|
            con.band
        end
        binding.pry
        concert_of.band
    end
end