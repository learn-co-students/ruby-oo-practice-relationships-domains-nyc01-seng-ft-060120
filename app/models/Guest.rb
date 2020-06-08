class Guest

    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def trips
        Trip.all.select do |trip|
            trip.guest == self
        end
    end

    def listings
        trips.map{|trip| trip.listing}.uniq
    end

    def trip_count
        trips.count 
    end

    def self.pro_traveller
        all_guests = Trip.all.map do |trip|
            trip.guest
        end
        all_guests.select{|guest| guest.trip_count > 1}.uniq
    end

    def self.find_all_by_name(name)
        @@all.select do |guest|
            guest.name == name
        end
    end

end