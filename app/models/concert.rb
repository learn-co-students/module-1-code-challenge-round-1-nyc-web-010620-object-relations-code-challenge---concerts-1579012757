attr_reader :band, :venue, :date
class Concert
    def initialize(date, band, venue)
        @date = date
        @band = band
        @venue = venue
        @@all << self
    end
    
    def self.all
        @@all
    end

    def hometown_show
        home_show = false
        if @venue.city == @band.hometown
            home_show = true
        end
        return home_show
    end

    def introduction
        puts "Hello #{@venue.city}!!!!!, we are #{@band.name} and we're from #{@band.hometown}"
    end
end