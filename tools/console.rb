require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

band1 = Band.new("Panic! at the Disco", "Las Vegas")
band2 = Band.new("Fall Out Boy", "Chicago")
band3 = Band.new("Heroes on Parade", "Ann Arbor")
band4 = Band.new("deadf3rret","Providence")
band5 = Band.new("My Chemical Romance","New York City")

v1 = Venue.new("The Dunk","Providence")
v2 = Venue.new("Foxwoods Theater","Ann Arbor")
v3 = Venue.new("Generic Arena", "New York City")
v4 = Venue.new("The Lincoln","Chicago")

b = Band.all
v = Venue.all

def datemaker
  y = rand(2020..2025)
  m = rand(1..12)
  d = rand(1..25)
  y = y.to_s
  if m.to_s.size == 1
    m = '0' + m.to_s
  else
    m = m.to_s
  end
  if d.to_s.size == 1
    d = '0' + d.to_s
  else
    d = d.to_s
  end
  "#{y}-#{m}-#{d}"
end

15.times do 
  Concert.new(datemaker,b[rand(b.size)],v[rand(v.size)])
end

c = Concert.all

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
