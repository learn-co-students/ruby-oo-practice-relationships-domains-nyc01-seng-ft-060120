class Dessert

    attr_reader :name, :ingredients
    attr_accessor :bakery


    @@all = []

    def initialize(name, bakery, ingredients)
        @name = name
        @bakery = bakery
        @ingredients = ingredients 
        @@all << self
    end

    def self.all
        @@all 
    end

    def calories
        sum = 0
        calories = self.ingredients.map{|ingredient| ingredient.calorie_count}
        calories.map do |num|
            sum+=num
        end
        sum
    end


    

end
