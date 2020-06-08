class Actor

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def characters
        Character.all.select{|character| character.actor == self}
    end

    def self.all
        @@all
    end

    def self.most_characters
        @@all.max{|actor_a, actor_b| actor_a.characters.count <=> actor_b.characters.count}
    end
end