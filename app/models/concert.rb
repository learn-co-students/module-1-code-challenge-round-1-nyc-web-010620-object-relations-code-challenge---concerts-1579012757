class Concert

    attr_accessor :date, :band, :venue
    @@all = []

    def initialize(date, band, venue)
        @date = date
        @band = band
        @venue = venue 
        @@all <<self
    end

    
    def self.all
        @@all
    end

    def self.band
        self.all.select |concert|
        concert.band
    end

    def self.venue
        self.all.select |concert|
        concert.venue
    end

    def hometown_show?
        self.all.map
       if  self.venue.city == self.band.hometown
        true
       else
        false
       end
    end

    def introduction (city, band_name, band_hometown)
        city =self.venue.city
        band_name = self.band.name
        band_hometown = self.band,hometown
       puts "Hello #{city}!!!!!, we are #{band_name} and we're from #{band_hometown}"
    end
    
end


#NOTES: when I run Concert.all on console, it gives me an empty array, sometimes it gives an array with my concerts, very strange behaviour of the console
# I had difficulties to troubleshoot the code