require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

listing1 = Listing.new("NYC")
listing2 = Listing.new("Brevard")
listing3 = Listing.new("Union")

guest1 = Guest.new("Lina")
guest2 = Guest.new("Kate")
guest3 = Guest.new("Paola")

trip1 = Trip.new(listing2, guest1)
trip2 = Trip.new(listing1, guest3)
trip3 = Trip.new(listing2, guest3)
trip4 = Trip.new(listing2, guest1)

Pry.start


