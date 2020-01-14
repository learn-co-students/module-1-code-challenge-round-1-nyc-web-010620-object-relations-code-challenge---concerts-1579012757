class Concert

    attr_accessor :date,:band,:venue

    @@all = []

    def initialize(date,band,venue)
        @date = date 
        @band = band 
        @venue = venue 
        @@all.push(self)
    end 

    def self.all 
        @@all
    end 

    def hometown_show? 
        Venue.all.each do |venue|
            if venue.city == self.band.hometown
                return true 
            else 
                return false
            end 
        end 
    end

    
    def introduction
        "Hello #{self.venue.city}!!!!!, we are #{self.band.name} and we're from #{self.band.hometown}"
    end 
    
end 


        #### Concert

# - `Concert#hometown_show?`
# - returns `true` if the concert is in the band's hometown, `false` if it is not


# - `Concert#introduction`
# - returns a string with the band's introduction for this concert
# - an introduction is in the form: `"Hello {insert city name here}!!!!!, we are {insert band name here} and we're from {insert hometown here}"`

    


# - `Concert#initialize(date, band, venue)`
#   - should initialize with a date (string), band, and venue
# - `Concert.all`
#   - should return all instances of `Concert`