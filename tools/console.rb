require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


band1 = Band.new("ACDC", "New York")
band2 = Band.new("Nirvana", "Los Angeles")
band3 = Band.new("Linkin Park", "Minneapolis")
band4 = Band.new("The Rolling Stones", "London")
band5 = Band.new("The Beatles", "London")

venue1 = Venue.new("MSG", "New York")
venue2 = Venue.new("The Staples Center", "Los Angeles")
venue3 = Venue.new("Met Life Stadium", "New Jersey")

concert1 = Concert.new("05-20-2020", band1, venue1)
concert2 = Concert.new("10-10-2020", band2, venue2)
concert3 = Concert.new("11-29-2020", band3, venue3)
concert4 = Concert.new("12-17-2020", band4, venue3)
concert5 = Concert.new("03-18-2020", band5, venue3)
concert6 = Concert.new("01-20-2020", band1, venue2)
concert7 = Concert.new("08-05-2020", band1, venue1)
concert8 = Concert.new("09-01-2020", band5, venue2)
concert9 = Concert.new("12-02-2020", band4, venue3)
concert10 = Concert.new("05-04-2020", band3, venue1)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
