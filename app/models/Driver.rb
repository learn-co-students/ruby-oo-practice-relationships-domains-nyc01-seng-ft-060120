class Driver
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all << self
    end

    def rides
        Ride.all.select do |ride|
            ride.driver == self
        end
    end

    def passengers
        self.rides.map do |ride|
            ride.passenger
        end
    end

    def self.mileage_cap(distance)
        rides_over_cap = Ride.all.select do |ride|
            ride.distance > distance
        end
        rides_over_cap.map do |ride|
            ride.driver
        end
    end
end
