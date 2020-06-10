class Ingredient

    attr_accessor :name , :calories 

    @@all = []

    def initialize(name,calories)
        @name = name 
        @calories = calories 
        @@all << self 
    end 

    def self.all
        @@all 
    end 
    
    def dessert
        Dessert.all.select {|dessert| dessert.ingredient == self}
    end 

    def bakeries
        dessert.map {|dessert| dessert.bakery}
    end 

    def self.find_all_by_name(ingredient)
        ingredient_array = []
        Ingredient.all.select do |ingredients| 
            if ingredients.name.include? ingredient 
                 ingredient_array << ingredients.name 
            end 
        end 
        ingredient_array
    end 
end 