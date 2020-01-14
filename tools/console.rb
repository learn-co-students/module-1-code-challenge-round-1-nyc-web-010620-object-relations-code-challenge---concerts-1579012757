require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


band1 = Band.new("The Beatles", "Liverpool")
band2 = Band.new("Scorpions", "Hanover")
band3 = Band.new("ACDC", "Sydney")
band4 = Band.new("The Who", "London")

venue1 = Venue.new("MSG", "NYC")
venue2 = Venue.new("Amphitheatre", "Brooklyn")
venue3 = Venue.new("Roundhouse", "London")
venue4 = Venue.new("Gallery", "LA")

concert1 = Concert.new("01/14/2020", band1, venue3)
concert2 = Concert.new("05/03/1960", band3, venue1)
concert3 = Concert.new("11/26/1995", band4, venue4)
concert4 = Concert.new("06/06/1966", band2, venue2)
concert1 = Concert.new("07/14/1940", band2, venue3)
concert2 = Concert.new("03/03/1960", band4, venue1)
concert3 = Concert.new("09/26/1935", band3, venue4)
concert4 = Concert.new("02/06/1986", band1, venue2)




binding.pry
0 #leave this here to ensure binding.pry isn't the last line
