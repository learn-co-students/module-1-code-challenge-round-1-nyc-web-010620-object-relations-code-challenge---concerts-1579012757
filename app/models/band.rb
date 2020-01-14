class Band
    attr_accessor :name
    attr_reader :hometown
    @@all = []

    def initialize(name, hometown) # `Band#initialize(name, hometown) & Band#name
        # cute 
        @name, @hometown = name, hometown 
        @@all << self
    end

    def self.all
        @@all
    end

    def concerts #Band#concerts`should return an array of all the concerts that the band has played in
        Concert.all.select{|enum| enum.band == self}
    end

    def play_in_venue(venue, date) #(date, band, venue) - `Band#play_in_venue(venue, date)` - takes a venue and date (as a string) as arguments, and creates a new concert for the band in that venue on that date
        Concert.new(date, self, venue)
    end

    def all_introductions # - `Band#all_introductions` - returns an array of strings representing all the introductions for this band
        concert_list = Concert.all.select{|concert| concert.band == self}
        concert_list.map{|concert| "Hello #{concert.venue.city}!!!!!, we are #{@name} and we're from #{@hometown}"}
    end
end

#### 
