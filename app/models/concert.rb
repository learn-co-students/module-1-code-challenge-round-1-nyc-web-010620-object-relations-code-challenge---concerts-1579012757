class Concert
    
    attr_accessor :date, :band, :venue

    @@all = []

    def initialize(date, band, venue)
        @date = date
        @band = band
        @venue = venue

        @@all << self
    end

    def self.all
        @@all
    end
    
    # nice clean use of ternary operators 
    def hometown_show?
        # if band.hometown == venue.city
        #     return true
        # else
        #     return false
        # end
        binding.pry
        band.hometown == venue.city ? true : nil
    end

    def introduction
        return "Hello #{venue.city}!!!!!, we are #{band.name} and we're from #{band.hometown}"
    end

end

# doesnt have basci association methods 
# - `Concert#band`
# - `Concert#venue`
