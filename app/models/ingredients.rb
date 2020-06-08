class Ingredient

    attr_reader :name, :dessert, :calories

    @@all = []

    def initialize(name, dessert, calories)
        @name = name
        @dessert = dessert
        @calories = calories
        @@all << self
    end

    def bakery
        self.dessert.bakery
    end

    def self.all
        @@all
    end

    def self.find_all_by_name(name)
        @@all.select{|ingredient| ingredient.name.include? name}
    end

end