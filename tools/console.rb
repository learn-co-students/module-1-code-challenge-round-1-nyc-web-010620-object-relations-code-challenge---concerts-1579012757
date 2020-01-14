require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

test_band = Band.new("Test_Band", "Seattle") #Band#initialize(name, hometown)
yesband = Band.new("Yesband", "New York")
noband = Band.new("Noband", "San Francisco")

grand_stadium = Venue.new("Grand_Stadium", "Seattle") #venue(title,city)
london_stadium = Venue.new("London_stadium", "London")
hk_grand = Venue.new("HK GRAND", "Hongkong")

october = Concert.new("10/11", test_band, grand_stadium) #concert(date,band,venue)
nov = Concert.new("11/23", yesband, london_stadium) 
dec = Concert.new("1/13", noband, london_stadium)
jan = Concert.new("1/13", noband, london_stadium)

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
