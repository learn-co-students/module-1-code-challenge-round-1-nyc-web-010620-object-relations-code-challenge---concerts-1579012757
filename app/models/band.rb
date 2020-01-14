class Band
    attr_accessor :name
    attr_reader :hometown
    @@all = []

    def initialize(name, hometown)
        @name = name
        @hometown = hometown
        @@all << self
    end

    def self.all
        @@all
    end
end


queen = Band.new

bohemian_rhapsody = queen 

bohemian_rhapsody.band = queen

bohemian_rhapsody.band.name

queen = Band.create name: 'Queen'

queen = hometown.create name: 'London'

queen = name.create name: 'United States


def venue ("United States", "January")

