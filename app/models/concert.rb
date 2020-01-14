require 'pry'
require_relative './zoo.rb'
require_relative './animal.rb'


class Concert
    attr_accessor :band, :date, :venue
  
    @@all = []
  
    def initialize(band, date, venue)
      @band = band
      @date = date
      @venue = venue
  
      @@all << self
    end
  
    def self.all
      @@all
    end
  
  end

  puts "Hello {United States}!!!!!, we are {Queen} and we're from {London}

  Def ("United States")
  false
end 