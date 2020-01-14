require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
band1 = Band.new("The Lady Bugs", "Flaxseed, Arkansas")
band2 = Band.new("A Band", "Burbank, California")

venue1 = Venue.new("Bugsy Hall", "Hartford")
venue2 = Venue.new("Owls Club", "Jersey City")


concert1 = Concert.new("January 12th", "The Lady Bugs", "Busgy Hall")
concert2 = Concert.new("March 9th", "A Band", "Zebra Studio")
concert2 = Concert.new("January 12th", "The Lady Bugs", "Owls Club")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
