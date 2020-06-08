class Bakery

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def desserts
        Dessert.all.select{|dessert| dessert.bakery == self}
    end

    def ingredients
        self.desserts.map{|dessert| dessert.ingredients}
    end

    def shopping_list
        self.ingredients.flatten.map{|ingredient| ingredient.name}
    end

    def average_calories
        total_calories = self.desserts.sum {|dessert| dessert.calories}
        total_calories / self.desserts.count
    end

    def self.all
        @@all
    end

end