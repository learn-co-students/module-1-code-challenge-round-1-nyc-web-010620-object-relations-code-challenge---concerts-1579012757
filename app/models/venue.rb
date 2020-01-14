class Venue
    attr_accessor :title
    attr_reader :city
    @@all = []

    def initialize(title, city)
        @title = title
        @city = city
        @@all << self
    end
#     - `Venue#bands`
#   - returns an array of all the bands for the venue
    def bands 
        self.venue.map do |bands|
            self.bands.all
        end     
    end 

    
    def self.all
        @@all
    end
end