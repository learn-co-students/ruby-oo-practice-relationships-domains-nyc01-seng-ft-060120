class Dessert

    attr_accessor :bakery, :ingredient 

    @@all = []

    def initialize(bakery,ingredient)
        @bakery = bakery
        @ingredient = ingredient 
        @@all << self 
    end 

    def self.all
        @@all
    end 

    def calories
        self.ingredient.calories
    end 
end 