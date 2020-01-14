class Concert
    attr_reader :date, :band, :venue

    @@all = []

    def initialize(date,band,venue)
        @date = date
        @band = band
        @venue = venue

        @@all << self
    end

    def hometown_show?
        @band.hometown == @venue.city
    end

    def introduction
        "Hello #{@venue.city}!!!!!, we are #{@band.name} and we're from #{@band.hometown}"
    end

    def self.all
        @@all
    end

#   x `Concert#hometown_show?`
#     - returns `true` if the concert is in the band's hometown, `false` if it is not
#   x `Concert#introduction`
#     - returns a string with the band's introduction for this concert
#     - an introduction is in the form: `"Hello {insert city name here}!!!!!, we are {insert band name here} and we're from {insert hometown here}"`

# x `Concert#initialize(date, band, venue)`
#   - should initialize with a date (string), band, and venue
# x `Concert.all`
#   - should return all instances of `Concert`

# x `Concert#band`
#   - should return the `Band` instance for this concert
# x `Concert#venue`
#   - should return the `Venue` instance for this concert
end