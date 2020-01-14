require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry

# Seed Data
# band(name, hometown)
band1 = Band.new("The Ramones", "Queens, NY")
band2 = Band.new("The Maine", "Tempe, AZ")
band3 = Band.new("The Kooks", "London, UK")
# venue(title, city)
venue1 = Venue.new("The Venue", "Brooklyn")
venue2 = Venue.new("That Other Venue", "LA")
venue3 = Venue.new("Some Third Venue", "Hong Kong")
# concert(date, band, venue)
concert1 = Concert.new("May 2, 2020", band1, venue3)
concert2 = Concert.new("March 10, 2020", band3, venue1)
concert3 = Concert.new("January 3, 2020", band2, venue2)

# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
