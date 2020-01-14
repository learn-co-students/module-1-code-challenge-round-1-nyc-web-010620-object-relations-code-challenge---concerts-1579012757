require 'pry'

class Venue
    attr_accessor :title
    attr_reader :city
    @@all = []

    def initialize(title, city)
        @title = title
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def concerts
        Concert.all.select { |concert| concert.venue == self}
    end

    def bands
        concerts.map { |concert| concert.band }
    end

    def concert_on(date)
        concerts.find { |concert| concert.date = concert.venue}
    end

    def most_frequent_band
        concerts.max_by { |concert| concert.band }
    end

end