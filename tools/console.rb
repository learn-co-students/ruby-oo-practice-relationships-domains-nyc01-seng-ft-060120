require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#Airbnb
# listing1 = Listing.new("NYC")
# listing2 = Listing.new("Brevard")
# listing3 = Listing.new("Union")

# guest1 = Guest.new("Lina")
# guest2 = Guest.new("Kate")
# guest3 = Guest.new("Paola")

# trip1 = Trip.new(listing2, guest1)
# trip2 = Trip.new(listing1, guest3)
# trip3 = Trip.new(listing2, guest3)
# trip4 = Trip.new(listing2, guest1)

#Bakery

# bakery1 = Bakery.new("Red Hens")
# bakery2 = Bakery.new("Magnolias")

# sugar = Ingredient.new("Sugar", 14)
# rice_flour = Ingredient.new("Rice Flour", 4)
# egg_yolk = Ingredient.new("Egg Yolk", 2)
# almond_flour = Ingredient.new("Almond Flour", 5)

# dessert1 = Dessert.new("Banana Pudding", bakery2, [sugar, rice_flour, almond_flour])
# dessert2 = Dessert.new("Choc cupcake", bakery1, [sugar, rice_flour, egg_yolk])

#Lyft

passenger1 = Passenger.new("Kate")
passenger2 = Passenger.new("Lina")
passenger3 = Passenger.new("Monica")

driver1 = Driver.new("Paola")
driver2 = Driver.new("Tim")
driver3 = Driver.new("Sam")

ride1 = Ride.new(passenger1, driver2, 53.3)
ride2 = Ride.new(passenger2, driver1, 67.8)
ride3 = Ride.new(passenger1, driver3, 40.0)
ride4 = Ride.new(passenger2, driver3, 40.0)





Pry.start


