class Dessert

    attr_reader :name, :bakery

    @@all = []

    def initialize(name, bakery)
        @name = name
        @bakery = bakery
        @@all << self
    end

    def ingredients
        Ingredient.all.select{|ingredient| ingredient.dessert == self}
    end

    def calories 
        self.ingredients.sum{|ingredient| ingredient.calories}
    end

    def self.all
        @@all
    end

end