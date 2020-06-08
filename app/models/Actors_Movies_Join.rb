class ActorMovie
attr_reader :actor, :movie

@@all = []

def initialize(actor, movie)
    @actor = actor
    @movie = movie
    @@all << self
end

def self.all
    @@all
end

end
