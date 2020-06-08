class Client

    attr_reader :name, :location, :trainer

    @@all = []

    def initialize(name, location)
        @name = name
        @location = location
        @@all << self
    end

    def assign_trainer(trainer)
        @trainer = trainer
    end

    def self.all
        @@all
    end

end