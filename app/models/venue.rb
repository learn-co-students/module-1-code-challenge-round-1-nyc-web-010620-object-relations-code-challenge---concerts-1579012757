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
        Concert.all.select { |concert| concert.venue == self }
    end

    def bands
        concerts.map { |concert| concert.band }
    end

    def concert_on(date)
        concert_on_date = Concert.all.find { |concert| concert.date == date }

        # if concert_on_date
        #     concert_on_date
        # else
        #     nil
        # end
        Concert.all.find { |concert| concert.date == date } ? concert_on_date : nil

    end

    def most_frequent_band
        bands.max_by { |band| bands.count(band) }
    end

end