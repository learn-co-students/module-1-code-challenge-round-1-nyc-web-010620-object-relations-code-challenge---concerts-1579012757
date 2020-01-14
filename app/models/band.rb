require_relative './getcount.rb'

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
        Concert.all.select { |concert| concert.band == self }
    end

    ##### extra method #####
    def venues
        self.concerts.map { |concert| concert.venue }
    end
    ########################

    def play_in_venue(venue,date)
        Concert.new(date,self,venue)
    end

    def all_introductions
        self.concerts.map { |concert| concert.introduction }
    end

    def self.all
        @@all
    end

    ######### extra method ##########
    # takes year as a string, returns the band name with the most concerts in that year
    def self.plays_the_most(year)
        concerts_in_year = Concert.all.select { |concert| concert.date[0..3] == year }
        concerts_by_band = concerts_in_year.map { |concert| concert.band }
        get_most(concerts_by_band)
    end
    ################################

#   x `Band#play_in_venue(venue, date)`
#     - takes a venue and date (as a string) as arguments, and creates a new concert for the band in that venue on that date
#   x `Band#all_introductions`
#     - returns an array of strings representing all the introductions for this band
#     - each introduction is in the form `"Hello {insert city name here}!!!!!, we are {insert band name here} and we're from {insert hometown here}"`

#   x `Band#initialize(name, hometown)`
#     - should initialize with a name (string) and hometown (string)
#   x `Band#name`
#     - should return the `Band`'s name
#     - should be able to change its name after creation
#   x `Band#hometown`
#     - should return the `Band`'s hometown
#     - should not be able to change its hometown after creation
#   x `Band.all`
#     - returns an array of all the instances of `Band`

#   x `Band#concerts`
#     - should return an array of all the concerts that the band has played in

end