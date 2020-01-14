require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
band1 = Band.new("Rock","Texas")
band2 = Band.new("Cobweb","Louisiana")
band3 = Band.new("Sanosansar","NewYork")
band4 = Band.new("Backstreet","California")
band5 = Band.new("Prithvi","Florida")


venue1 = Venue.new("Ram","Dallas")
venue2 = Venue.new("Shyam","Denver")
venue3 = Venue.new("Hari","Orlando")
venue4 = Venue.new("Krishna","Ada")
venue5 = Venue.new("Puntey","Jackson")


concert1 = Concert.new("2014-02-16",band1,venue1)
concert2 = Concert.new("2014-02-16",band5,venue2)
concert3 = Concert.new("2014-02-16",band3,venue2)
concert4 = Concert.new("2014-02-16",band2,venue4)
concert5 = Concert.new("2014-02-16",band1,venue5)
concert6 = Concert.new("2014-02-16",band1,venue3)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
