class Actor
    attr_accessor :name
    
    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end
    
    def self.all
        @@all
    end

    def movies
         actor_movie_elements = ActorMovie.all.select do |actor_movie|
            actor_movie.actor == self 
        end
        actor_movie_elements.map do |el|
            el.movie
        end
        end

        def self.movies
            ActorMovie.all.map do |el|
                el.movie
            end.uniq
        end

        def shows
            actor_show_elements = ActorShow.all.select do |actor_show|
               actor_show.actor == self 
           end
           actor_show_elements.map do |el|
               el.show
           end
           end

           def self.most_characters
            actors = Character.all.map {|character| character.actor}
            actors.max_by{|actor| actors.count(actor)}
        end


    

    
    end