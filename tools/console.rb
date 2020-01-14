require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

band1 = Band.new("Tool", "LA")
band2 = Band.new("LCD Soundsystem", "NYC")
band3 = Band.new("Cat Food", "Des Moines")

venue1 = Venue.new("The Big Place", "Philly")
venue2 = Venue.new("The Small Place", "Tampa")
venue3 = Venue.new("Your House", "Las Vagas")

concert1 = Concert.new("Monday", "band1", "venue2")
concert2 = Concert.new("Friday", "band2", "venue3")
concert3 = Concert.new("Wednesday", "band2", "venue1")
concert4 = Concert.new("Saturday", "band3", "venue3")
concert5 = Concert.new("Tuesday", "band1", "venue2")
concert6 = Concert.new("Sunday", "band3", "venue3")

Concert.all

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
