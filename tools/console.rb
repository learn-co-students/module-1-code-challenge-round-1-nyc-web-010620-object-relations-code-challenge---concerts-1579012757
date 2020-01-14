require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

band1 = Band.new("Duf Pank", "Berlin")
band2 = Band.new("Air", "Los Angeles")
band3 = Band.new("Shakira", "San Francisco")

venue1 = Venue.new("Met", "New York")
venue2 = Venue.new("Prudencial", "Newark")
venue3 = Venue.new("MSG", "New York")

concert1 = Concert.new("01-01-2019", band1, venue1)
concert2 = Concert.new("02-02-2018", band2, venue2)
concert3 = Concert.new("03-03-2017", band3, venue3)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
