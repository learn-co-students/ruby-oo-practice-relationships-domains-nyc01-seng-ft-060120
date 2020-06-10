class Bakery

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name 
        @@all << self 
    end 

    def self.all
        @@all 
    end 

    def dessert  
        Dessert.all.select {|dessert| dessert.bakery == self}
    end 

    def ingredient 
        dessert.map {|dessert| dessert.ingredient}
    end 

    def shopping_list
        ingredient.map {|ingredient| ingredient.name}
    end 
  
    def average_calories 
        total = 0 
        ingredient.each do |ingredient|
            total += ingredient.calories 
        end 
        total/ingredient.count
    end 


end 