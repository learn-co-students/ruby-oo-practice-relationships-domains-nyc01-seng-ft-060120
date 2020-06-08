class Movie

    attr_reader :name

    @@all = []

    def initialize(name)
        @@all << self
    end

    def characters
        Character.all.select{|character| character.movie == self}
    end

    def actors
        self.characters.map{|character| character.actor}
    end

    def self.all
        @@all
    end
    
    def self.most_actors
        @@all.max{|movie_a, movie_b| movie_a.actors.count <=> movie_b.actors.count}
    end
end