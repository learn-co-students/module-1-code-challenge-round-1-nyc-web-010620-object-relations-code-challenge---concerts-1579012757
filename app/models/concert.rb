class Concert
    attr_reader :date, :band, :venue
    @@all = []
    def initialize(date, band, venue) # `Concert#initialize(date, band, venue)` should initialize with a date (string), band, and venue
        @date, @band, @venue = date, band, venue
        @@all << self
    end

    def self.all # `Concert.all`  should return all instances of `Concert`
        @@all
    end

    def hometown_show  #- `Concert#hometown_show?` - returns `true` if the concert is in the band's hometown, `false` if it is not
        @venue.city == @band.hometown
    end

    def introduction # - `Concert#introduction` - returns a string with the band's introduction for this concert
        location = Venue.all.find{|venues| venues == @venue}.city
        "Hello #{location}!!!!!, we are #{@band.name} and we're from #{@band.hometown}"
    end

end

