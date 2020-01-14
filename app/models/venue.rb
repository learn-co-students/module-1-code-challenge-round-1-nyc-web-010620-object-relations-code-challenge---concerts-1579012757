class Venue
    attr_accessor :title
    attr_reader :city
    @@all = []

    def initialize(title, city)
        @title = title
        @city = city
        @@all << self
    end

    def concerts
        # returns an array of all the concerts for the venue
        Concert.all.select do |concert|
            concert.venue == self
        end

    end

    def bands
        # returns an array of all the bands for the venue
        Concert.all.select do |band|
            band.venue == self
        end
    end

    def concert_on(date)
        # takes a date (string) as argument
        # finds and returns the first concert on that date at that venue
        # if there is no concert on that date at that venue, returns `nil`
        # need to fix logic here
        # Concert.all.find do |concert|
        #     date.venue == date
        # end


    end

    def most_frequent_band
        # returns the band with the most concerts at the venue


    end

    def self.all
        @@all
    end
end