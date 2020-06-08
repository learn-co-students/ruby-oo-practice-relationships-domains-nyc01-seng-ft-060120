class Movie
attr_accessor :name

@@all = []

def initialize(name)
    @name = name
    @@all << self
end

def self.all
    @@all
end

def actors
    actor_movie_elements = ActorMovie.all.select do |actor_movie|
        actor_movie.movie == self 
    end
    actor_movie_elements.map do |el|
        el.actor
    end
end

def self.most_actors
    result = ActorMovie.all.max_by do |actor_movie| 
        actor_movie.movie.actors.length
    end
    result.movie
end


end