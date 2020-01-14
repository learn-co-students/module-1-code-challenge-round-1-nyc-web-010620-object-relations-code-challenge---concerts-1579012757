require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

band1 = Band.new("Chili Peppers", "Minneapolis")
band2 = Band.new("The Boyz", "Jacksonville")
band3 = Band.new("The Roots", "Atlanta")

venue1 = Venue.new("MSG", "New York")
venue2 = Venue.new("Vegas", "Nevada")
venue3 = Venue.new("Super Dome", "Louisianna")

con1 = Concert.new("11/11",band1,venue1)
con2 = Concert.new("9/10",band2,venue2)
con3 = Concert.new("4/13",band3,venue3)

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
