class Guest
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def trips
        Trip.all.select {|trip| trip.guest == self}
    end
    
    def listings
        trips.map {|trip| trip.listing}
    end
    
    def trip_count
        trips.count
    end
        
    def self.all
        @@all
    end

    def pro_traveller
        Guest.all.select {|guest| guest.trip_count > 1}
    end

    def find_all_by_name(name)
        Guest.all.select {|guest| guest.name === name}
    end
end