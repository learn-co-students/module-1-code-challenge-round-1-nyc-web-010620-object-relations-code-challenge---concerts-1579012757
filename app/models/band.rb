class Band
    attr_accessor :name
    attr_reader :hometown
    
    @@all = []

    def initialize(name, hometown)
        @name = name
        @hometown = hometown

        @@all << self
    end

    # should return an array of all the concerts that the band has played in
    # iterate over all the concerts and then select the ones where the band matches the band we are looking for
    def concerts
        Concert.all.select{|concert| concert.band == self}
    end 

    def self.all
        @@all
    end

    # creates a new concert for the band in that venue on that date
    def play_in_venue(venue, date)
        Concert.new(date, self, venue)
    end 

end

# - `Band#initialize(name, hometown)`
#   - should initialize with a name (string) and hometown (string)
# - `Band#name`
#   - should return the `Band`'s name
#   - should be able to change its name after creation
# - `Band#hometown`
#   - should return the `Band`'s hometown
#   - should not be able to change its hometown after creation
# - `Band.all`
#   - returns an array of all the instances of `Band`

# - `Band#concerts`
#   - should return an array of all the concerts that the band has played in

# - `Band#play_in_venue(venue, date)`
#   - takes a venue and date (as a string) as arguments, and creates a new concert for the band in that venue on that date
# - `Band#all_introductions`
#   - returns an array of strings representing all the introductions for this band
#   - each introduction is in the form `"Hello {insert city name here}!!!!!, we are {insert band name here} and we're from {insert hometown here}"`