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
        Concert.all.select{ |Concerto| Concerto.venue == self }
    end

    def bands
        self.concerts.map{ |my_con| my_con.band }
    end

    def concert_on(date)
        self.concerts.find{ |Goku| Goku.date == date }
    end

    def most_frequent_band  #didn't finish this
        self.concerts.map { |DA_WORLDOO| DA_WORLDOO.band }
    end
end