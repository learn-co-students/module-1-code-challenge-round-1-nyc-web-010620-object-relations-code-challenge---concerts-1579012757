require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


  v1 = Venue.new("Ballroom","NY")
  v2 = Venue.new("Town Hall","UT")
  v3 = Venue.new("Outside","CA")

  b1 = Band.new("lil nas","NY")
  b2 = Band.new("Drake","BK")
  b3 = Band.new("Biggie","FL")

  c1 = Concert.new("Today",b1,v1)
  c2 = Concert.new("Tomorrow",b1,v2)
  c3 = Concert.new("Next Week",b2,v2)
  c4 = Concert.new("Wednesday",b1,v2)

binding.pry


# <!-- ### Initializers, Readers, and Writers

#### Band

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

# #### Venue

# - `Venue#initialize(title, city)`
#   - should initialize with a title (string) and city (string)
# - `Venue#title`
#   - should return the title of the venue
#   - should be able to change its title after creation
# - `Venue#city`
#   - should return the city of the venue
#   - should not be able to change its city after creation
# - `Venue.all`
#   - returns all the instances of `Venue`

# #### Concert

# - `Concert#initialize(date, band, venue)`
#   - should initialize with a date (string), band, and venue
# - `Concert.all`
#   - should return all instances of `Concert`

# ### Object Relationship Methods

# #### Concert

# - `Concert#band` - VALIDEID 
#   - should return the `Band` instance for this concert
# - `Concert#venue` - VALIDATED 
#   - should return the `Venue` instance for this concert

# #### Venue

# - `Venue#concerts` - VALIDATED 
#   - returns an array of all the concerts for the venue
# - `Venue#bands` - VALIDATED 
#   - returns an array of all the bands for the venue -->

# <!-- #### Band

# - `Band#concerts` - VALIDATED 
#   - should return an array of all the concerts that the band has played in -->

# ### Aggregate and Association Methods

# #### Concert

# - `Concert#hometown_show?` - VALIDATED 
#   - returns `true` if the concert is in the band's hometown, `false` if it is not
# - `Concert#introduction` - VALIDATED 
#   - returns a string with the band's introduction for this concert
#   - an introduction is in the form: `"Hello {insert city name here}!!!!!, we are {insert band name here} and we're from {insert hometown here}"`

# #### Band

# - `Band#play_in_venue(venue, date) - VALIDATED 
#   - takes a venue and date (as a string) as arguments, and creates a new concert for the band in that venue on that date
# - `Band#all_introductions` --VALIDATED
#   - returns an array of strings representing all the introductions for this band
#   - each introduction is in the form `"Hello {insert city name here}!!!!!, we are {insert band name here} and we're from {insert hometown here}"`

# #### Venue

# - `Venue#concert_on(date)` -- VALIDATED 
#   - takes a date (string) as argument
#   - finds and returns the first concert on that date at that venue
#   - if there is no concert on that date at that venue, returns `nil`
# - 
  # `Venue#most_frequent_band` - -- VALIDATED 
#   - returns the band with the most concerts at the venue
0 #leave this here to ensure binding.pry isn't the last line
