class Band
    attr_accessor :name
    attr_reader :hometown
    @@all = []

    def initialize(name, hometown)
        @name = name
        @hometown = hometown
        @@all << self
    end

    def concerts
        # should return an array of all the concerts that the band has played in
        Concert.all.select do |concert|
            concert.band == self
        end
    end

    def play_in_venue(venue, date)
        # takes a venue and date (as a string) as arguments,
        # and creates a new concert for the band in that venue on that date
        concert = Concert.new(date, band, venue)

    end

    def all_introductions
        # returns an array of strings representing all the introductions for this band
        # "Hello {insert city name here}!!!!!, we are {insert band name here} and we're from {insert hometown here}"



    end

    def self.all
        @@all
    end
end