class Venue
    attr_accessor :title
    attr_reader :city
    @@all = []

    def initialize(title, city)
        @title = title
        @city = city
        @@all << self
    end

    def bands
        self.concerts.map do |concert|
        concert.band
        end
    end

    def concerts_on(date)
        self.all

    def self.all
        @@all
    end
end