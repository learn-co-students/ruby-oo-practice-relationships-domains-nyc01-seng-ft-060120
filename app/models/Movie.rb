class Movie
attr_accessor :name, :actor, :character

@@all = []

def initialize(name)
    @name = name
    @@all << self
end

def self.all
    @@all
end


def add_actor(actor)
    if self.actor
    Actor.new(actor)
end

def add_character(name, actor=nil)
    Character.new(name, self.actor, self)
    end


# def self.movie_names
#     movies_with_info = Character.all.map do |character|
#         character
#     end
# end

def self.most_actors
    Character.all.map do |character|
        character.movie
    end
end

end