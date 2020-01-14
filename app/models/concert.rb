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

   # # should return the `Band` instance for this concert
   # # pass in a concert instance and get back the band instance for this concert 
   # def band
   #    self.band 
   # end 

   # # should return the `Venue` instance for this concert
   # def venue
   #    self.venue 
   # end 

   # returns `true` if the concert is in the band's hometown, `false` if it is not
   # passing in a concert, if the concert is in a band's hometown, return true
   def hometown_show?
      self.venue.city == self.band.hometown 
   end 

   def introduction
      "Hello #{venue.city}!!!!!, we are #{@band} and we're from #{band.hometown}"
   end 
    
end


# - `Concert#initialize(date, band, venue)`
#   - should initialize with a date (string), band, and venue
# - `Concert.all`
#   - should return all instances of `Concert`

# - `Concert#band` => instance method 
#   - should return the `Band` instance for this concert
# - `Concert#venue` => instance method 
#   - should return the `Venue` instance for this concert

# - `Concert#hometown_show?`
#   - returns `true` if the concert is in the band's hometown, `false` if it is not
# - `Concert#introduction`
#   - returns a string with the band's introduction for this concert
#   - an introduction is in the form: `"Hello {insert city name here}!!!!!, we are {insert band name here} and we're from {insert hometown here}"`