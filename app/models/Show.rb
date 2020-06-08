class Show
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
        actor_show_elements = ActorShow.all.select do |actor_show|
            actor_show.show == self 
        end
        actor_show_elements.map do |el|
            el.actor
        end
    end

    def on_the_big_screen
        Actor.movies.select do |movie|
            movie.name == self.name
        end
    end



    
    end