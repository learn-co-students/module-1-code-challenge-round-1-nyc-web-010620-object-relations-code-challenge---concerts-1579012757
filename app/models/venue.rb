require_relative './getcount.rb'

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
        Concert.all.select { |concert| concert.venue == self }
    end

    def bands
        self.concerts.map { |concert| concert.band }
    end

    def concert_on(given_date)
        self.concerts.find { |concert| concert.date == given_date }
    end

    def most_frequent_band
        get_most(self.bands)
    end

    ###### extra method #######
    # prints out concert dates & bands
    def schedule
        puts "\n\nUPCOMING CONCERTS AT #{self.title.upcase}\n\n"
        self.concerts.each do |concert|
            puts "#{concert.date} -- #{concert.band.name}"
        end
        split_title = self.title.split(' ')
        if split_title.size > 1
            url_title = ''
            split_title.each { |str| url_title = url_title + str }
        else
            url_title = split_title
        end
        puts "\n\ngo to www.#{url_title.downcase}.com to get your tickets today"
        ' '
    end
    ###########################

    def self.all
        @@all
    end


#   x `Venue#concert_on(date)`
#     - takes a date (string) as argument
#     - finds and returns the first concert on that date at that venue
#     - if there is no concert on that date at that venue, returns `nil`
#   x `Venue#most_frequent_band`
#     - returns the band with the most concerts at the venue


# x `Venue#concerts`
#     - returns an array of all the concerts for the venue
# x `Venue#bands`
#     - returns an array of all the bands for the venue

# x `Venue#initialize(title, city)`
#   - should initialize with a title (string) and city (string)
# x `Venue#title`
#   - should return the title of the venue
#   - should be able to change its title after creation
# x `Venue#city`
#   - should return the city of the venue
#   - should not be able to change its city after creation
# x `Venue.all`
#   - returns all the instances of `Venue`
end