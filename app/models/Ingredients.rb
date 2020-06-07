class Ingredient

    attr_reader :name, :calorie_count
  

    @@all = []

    def initialize(name, calorie_count)
        @name = name
        @calorie_count = calorie_count
        @@all << self
    end

    def self.all
        @@all
    end

    def dessert
        Dessert.all.select do |dessert|
        dessert.ingredients.include?(self)
        end
    end

    def bakery
        self.dessert.map do |dessert|
            dessert.bakery
        end
    end

    def self.find_all_by_name(name)
        @@all.select do |ingredient|
            ingredient.name.include?(name)
        end

    end

        

end