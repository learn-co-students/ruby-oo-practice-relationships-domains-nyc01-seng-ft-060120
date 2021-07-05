class Show

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def on_the_big_screen
        Character.movies.select{|movie| movie.name == self.name}
    end

    def self.all
        @@all
    end

end