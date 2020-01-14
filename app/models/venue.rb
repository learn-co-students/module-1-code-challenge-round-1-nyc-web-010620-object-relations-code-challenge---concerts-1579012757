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
        Concert.all.select do |concert|
            concert.venue == self 
        end 
    end 

    def bands
        concerts.map do |concert|
            concert.band 
        end 
    end 

    def concert_on(date)
        concerts.find do |concert|
           concert.date == date 
        end 
    end 

    def most_frequent_band  
       most_freq = concerts.max_by do |concert| 
            concert.band 
        end 
        most_freq.band
    end 

end


#### Venue

# - `Venue#concert_on(date)`
#   - takes a date (string) as argument
#   - finds and returns the first concert on that date at that venue
#   - if there is no concert on that date at that venue, returns `nil`
# - `Venue#most_frequent_band`
#   - returns the band with the most concerts at the venue


# #### Venue

# - `Venue#concerts`
#   - returns an array of all the concerts for the venue
# - `Venue#bands`
#   - returns an array of all the bands for the venue