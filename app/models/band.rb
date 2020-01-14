class Band
    attr_accessor :name
    attr_reader :hometown
    @@all = []

    def initialize(name, hometown)
        @name = name
        @hometown = hometown
        @@all << self
    end

    def self.all
        @@all
    end

    def concerts 
        Concert.all.select{ |con_list| con_list.band == self}
    end

    def play_in_venue(venue, date)
        Concert.all << new.Concert(date, self, venue)
    end

    def band_all_introductions
        self.concerts.map { |concerts| puts "Hello #{concerts.venue.city}!!!!!, we are #{@name} and we're from #{@hometown}"}
    end
end