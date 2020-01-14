class Concert
    attr_accessor :date, :band, :venue
    @@all = []
    def initialize(date, band, venue)
        @date = date
        @band = band
        @venue = venue
        @@all << self
    end

    def self.all 
        @@all
    end

    def hometown_show
        if self.band.hometown == self.venue.city
            return true
        else 
            false
        end
    end

    def introduction
        "Hello #{self.venue.city}!!!!!, we are #{self.band.name} and we're from #{self.band.hometown}"
    end

end