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
        @venue.city == @band.hometown
    end

    def introduction
        # returns a string with the band's introduction for this concert
        # fix logic 
        location = Venue.all.find{|venues| venues == @venue}.city
        "Hello #{location}!!!!!, we are #{@band.name} and we're from #{@band.hometown}"
    end

    def self.all
        @@all
    end







end