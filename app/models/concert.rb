class Concert
    attr_accessor :date, :band, :venue
    
    @@all = []

    def initialize(date, band, venue)
        @date = date
        @band = band
        @venue = venue

        @@all << self
    end

    def hometown_show?
        # returns `true` if the concert is in the band's hometown, `false` if it is not
        # pseudocode
        # if hometown.band == city.venue
        #     true
    end

    def introduction
        # returns a string with the band's introduction for this concert
        # fix logic 
        #"Hello #{city.venue}!!!!!, we are #{band} and we're from #{hometown.band}"

    end

    def self.all
        @@all
    end







end