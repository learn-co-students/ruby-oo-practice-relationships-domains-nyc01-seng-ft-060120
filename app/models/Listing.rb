class Listing
    @@all = []

attr_reader :city

    def initialize(city)
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def new_trip(guest)
        Trip.new(self, guest)
    end
    
    def trips
        Trip.all.select do |trip|
            trip.listing == self
        end
    end

    def guests
        trips.map{|trip| trip.guest}.uniq
    end

    def trip_count
        trips.count 
    end

    def self.find_all_by_city(city)
        Trip.all.select do |trip|
            trip.listing.city == city 
        end
    end

    def self.most_popular
       all_listings = Trip.all.map{|trip| trip.listing}
       all_listings.max_by{|listing| all_listings.count(listing)}

    end

    end

