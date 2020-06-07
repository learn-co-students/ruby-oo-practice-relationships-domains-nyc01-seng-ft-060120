class Ride

    attr_reader :passenger, :driver, :distance

    @@all = []

    def initialize(passenger, driver, distance)
        @passenger = passenger
        @driver = driver
        @distance = distance
        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        all_distances = @@all.map do |ride|
            ride.distance
        end
        all_distances.sum(0.0) / all_distances.size
    end


end