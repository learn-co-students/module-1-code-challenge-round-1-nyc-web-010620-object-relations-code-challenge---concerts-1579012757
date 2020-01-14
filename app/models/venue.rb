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
        Concert.all.select { |concert| concert.venue == self }
    end

    def bands
        self.concerts.map { |concert| concert.band }
    end
end

# comments 
# - `Venue#concert_on(date)`
# - takes a date (string) as argument
# - finds and returns the first concert on that date at that venue
# - if there is no concert on that date at that venue, returns `nil`
# - `Venue#most_frequent_band`
# - returns the band with the most concerts at the venue