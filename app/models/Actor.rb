class Actor
    attr_accessor :name, :movie, :show, :character
    
    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end
    
    def self.all
        @@all
    end



    
    end