require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# TESTS FOR AIRBNB CHALLENGE
listing_one = Listing.new("Cute Listing", "Boston")
listing_two = Listing.new("Cheap Listing", "New York City")
listing_three = Listing.new("Expensive Listing", "San Francisco")

guest_one = Guest.new("Max")
guest_two = Guest.new("Amanda")
guest_three = Guest.new("Samantha")

Trip.new(listing_one, guest_one)
Trip.new(listing_two, guest_two)
Trip.new(listing_three, guest_three)
Trip.new(listing_three, guest_one)

listing_three.trips
listing_three.guests
listing_three.trip_count

Listing.all
Listing.find_all_by_city("Boston")
Listing.most_popular

guest_one.trips
guest_one.listings
guest_one.trip_count

Guest.all
Guest.pro_traveler
Guest.find_all_by_name("Max")
# END AIRBNB TESTS

#TESTS FOR BAKERY CHALLENGE
bakery_one = Bakery.new("Max's Bakery")

dessert_one = Dessert.new("Brownie", bakery_one)

brownie_mix = Ingredient.new("Brownie Mix", dessert_one, 100)
egg = Ingredient.new("Egg", dessert_one, 80)
water = Ingredient.new("Water", dessert_one, 0)
oil = Ingredient.new("Oil", dessert_one, 24)
milk = Ingredient.new("Milk", dessert_one, 47)

bakery_one.desserts
bakery_one.ingredients
bakery_one.shopping_list
bakery_one.average_calories
Bakery.all

dessert_one.ingredients
dessert_one.calories 
dessert_one.bakery
Dessert.all

brownie_mix.dessert 
brownie_mix.bakery
Ingredient.all
Ingredient.find_all_by_name("Brown")
#END BAKERY TESTS

#TEST FOR CROWDFUNDING CHALLENGE
user_one = User.new("Max")
user_two = User.new("Amanda")
user_three = User.new("Samantha")

project_one = Project.new("Project 1", user_one, 50)
project_two = Project.new("Project 2", user_one, 1500)
project_three = Project.new("Project 3", user_two, 200)

pledge_one = Pledge.new(user_one, project_one, 100)
pledge_two = Pledge.new(user_one, project_one, 20)
pledge_three = Pledge.new(user_two, project_three, 1300)
pledge_four = Pledge.new(user_three, project_one, 15)

User.highest_pledge
User.multi_pledger
User.project_creator

Project.no_pledges
Project.above_goal
Project.most_backers

pledge_one.project 
pledge_one.user
#END CROWDFUNDING TESTS

#TEST FOR GYM CHALLENGE

gym_one = Location.new("Gym One")
gym_two = Location.new("Gym Two")

trainer_one = Trainer.new("Max")
trainer_two = Trainer.new("Sam")

client_one = Client.new("Client One", gym_one)
client_two = Client.new("Client Two", gym_two)
client_three = Client.new("Client Three", gym_two)

client_one.assign_trainer(trainer_one)
client_two.assign_trainer(trainer_two)
client_three.assign_trainer(trainer_two)

Location.all
Location.least_clients
trainer_one.clients 

Trainer.all
trainer_one.clients 
Trainer.most_clients

Client.all
#END GYM TESTS
Pry.start
