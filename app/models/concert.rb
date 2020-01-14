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

    def hometown_show?
        # if band.hometown == venue.city
        #     return true
        # else
        #     return false
        # end

        band.hometown == venue.city ? true : nil
    end

    def introduction
        return "Hello #{venue.city}!!!!!, we are #{band.name} and we're from #{band.hometown}"
    end

end