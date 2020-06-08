class Character

    attr_accessor :name, :actor

    @@all = []

    def initialize(name, actor)
        @name = name
        @actor = actor
        @@all << self
    end

    def self.all
        @@all
    end

    def movies
        CharacterMovie.all.select do |character_movie|
            character_movie.character == self
        end
    end

    def shows
        CharacterShow.all.select do |character_show|
            character_show.character == self
        end
    end

    ## very stuck on self.most_appearances

    def self.most_appearances
        all_characters = CharacterMovie.all.map do |character_movie|
            character_movie.character
        end
        end



    

    
end