require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

b1 = Band.new("ABC", "Philly")
b2 = Band.new("XYZ", "NYC")
b3 = Band.new("MNO", "Pitt")

v1 = Venue.new("123 Gal", "LA")
v2 = Venue.new("345 Gal", "San Fran")
v3 = Venue.new("456 Gal", "Philly")
v4 = Venue.new("789 Gal", "NYC")

c1 = Concert.new("01/01/20", b1, v1)
c2 = Concert.new("02/02/20", b2, v2)
c3 = Concert.new("03/03/20", b3, v1)
c4 = Concert.new("04/04/20", b1, v2)
#
c5 = Concert.new("05/05/20", b1, v3)
c6 = Concert.new("06/06/20", b2, v4)
#
c7 = Concert.new("01/01/20", b2, v1)
c8 = Concert.new("02/01/20", b1, v1)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
