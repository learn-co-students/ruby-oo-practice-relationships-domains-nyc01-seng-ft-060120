class Show
    attr_accessor :name, :actor, :character
    
    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end
    
    def self.all
        @@all
    end
    
    end