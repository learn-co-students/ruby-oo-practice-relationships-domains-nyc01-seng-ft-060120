class Bakery

     attr_reader :name
     attr_accessor :dessert

    @@all = []

    def initialize(name)
        @name = name
        
        @@all << self
    end

    def self.all
        @@all
    end

    def desserts
        Dessert.all.select{|dessert| dessert.bakery == self}.uniq
    end

    def ingredients
        self.desserts.map{|dessert| dessert.ingredients}.flatten
    end

    def all_calories
        self.ingredients.map do |ingredient|
            ingredient.calorie_count
         end
    end
      
    def average_calories
       all_calories.sum(0.0) / all_calories.size
    end


    def shopping_list
        ingredients.map do |ingredient|
        ingredient.name
        end.uniq
    end



end