class Listing

    attr_reader :name, :city

    @@all = []

    def initialize(name, city)
        @name = name
        @city = city
        @@all << self
    end

    def trips
        Trip.all.select{|trip| trip.listing == self}
    end

    def guests
        self.trips.map{|trip| trip.guest}
    end

    def trip_count
        self.trips.count
    end

    def self.all
        @@all
    end

    def self.find_all_by_city(city)
        Trip.all.select{|trip| trip.listing.city == city}
    end

    def self.most_popular
        @@all.max{|listing_a, listing_b| listing_a.trip_count <=> listing_b.trip_count }
    end

end