class Location

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def clients 
        Client.all.select{|client| client.location == self}
    end

    def self.least_clients
        @@all.min{|location_a, location_b| location_a.clients.count <=> location_b.clients.count}
    end

    def self.all
        @@all
    end

end