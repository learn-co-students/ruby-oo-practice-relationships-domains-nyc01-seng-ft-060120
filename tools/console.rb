require_relative '../config/environment.rb'
def reload
  load 'config/environment.rb'
end

##################################################################
### BAKERY ###
lola = Bakery.new("Lola's")
abc = Bakery.new("ABC")
paris = Bakery.new("Paris Baugette")
##################################################################
### INGREDIENTS ###
sugar = Ingredient.new("Sugar", 90)
chocolate = Ingredient.new("Chocolate", 70)
sprinkles = Ingredient.new("Sugar Sprinkles", 10)
##################################################################
### DESSERT ###
chocolate_cookie = Dessert.new(lola,chocolate)
chocolate_cake = Dessert.new(abc,chocolate)
sugar_cookie = Dessert.new(paris, sugar)
pudding = Dessert.new(lola,sugar)

Pry.start
