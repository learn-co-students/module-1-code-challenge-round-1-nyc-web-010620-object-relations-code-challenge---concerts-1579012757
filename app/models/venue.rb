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

    # returns an array of all the concerts for the venue
    def concerts
        Concert.all.select{|concert| concert.venue == self}
    end 

    # returns an array of all the bands for the venue
    def bands
        self.concerts.map{|concert| concert.band}
    end 

    # lets build those out 
    def concert_on(date)
    end 

    def most_frequent_band
    end 
end

# - `Venue#initialize(title, city)`
# - should initialize with a title (string) and city (string)
# - `Venue#title`
# - should return the title of the venue
# - should be able to change its title after creation
# - `Venue#city`
# - should return the city of the venue
# - should not be able to change its city after creation
# - `Venue.all`
# - returns all the instances of `Venue`

# - `Venue#concerts`
#   - returns an array of all the concerts for the venue
# - `Venue#bands`
#   - returns an array of all the bands for the venue
