class Band
    attr_accessor :name
    attr_reader :hometown
    @@all = []

    def initialize(name, hometown)
        @name = name
        @hometown = hometown
        @@all << self
    end

    def concerts
        Concert.all.select do |concert|
            concert.band == self
        end
    end   

    def self.all
        @@all
    end
end