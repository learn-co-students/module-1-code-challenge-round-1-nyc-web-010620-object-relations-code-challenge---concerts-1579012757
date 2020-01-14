class Venue
    attr_accessor :title
    attr_reader :city
    @@all = []

    def initialize(title, city) #venue(title,city)
        @title, @city = title, city
        @@all << self
    end

    def self.all # `Venue.all` - returns all the instances of `Venue`
        @@all
    end

    def concerts #`Venue#concerts` -  returns an array of all the concerts for the venue
        Concert.all.select{|concert| concert.venue == self}
    end

    def concert_on(date) # `Venue#concert_on(date)`
        Concert.all.select{|concert| concert.date == date }
    end

    def most_frequent_band #@`Venue#most_frequent_band` - returns the band with the most concerts at the venue
        frequency = Hash.new(0)
        Concert.all.select{|concert| concert.venue == self}.each{|venue_concert| frequency[venue_concert.band] += 1}
        frequency.sort_by{|key, value| value}.last[0]
    end

end