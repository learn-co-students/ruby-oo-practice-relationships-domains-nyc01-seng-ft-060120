class Character

    attr_reader :name, :actor, :show, :movie

    @@all = []

    def initialize(name, actor, property)
        @name = name
        @actor = actor
        if property.class == Movie
            @movie = property
            @show = nil
        elsif property.class == Show 
            @show = property
            @movie=nil
        end
        @@all << self
    end

    def appearances
        @@all.count{|character| character.name == self.name}
    end

    def self.all
        @@all
    end

    def self.movies
        @@all.map{|character| character.movie}
    end

    def self.most_appearances
        @@all.max{|character_a, character_b| character_a.appearances <=> character_b.appearances}
    end
end