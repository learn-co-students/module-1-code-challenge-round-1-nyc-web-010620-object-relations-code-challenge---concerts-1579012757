class Band
    attr_accessor :name, :concerts
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

#     `Band#concerts`
#   - should return an array of all the concerts that the band has played in
    def concerts
     self.concert.all.select |concert|
        self.concert
     end 
end 

   