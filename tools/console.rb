require_relative '../config/environment.rb'
require "pry"



e1 = Employee.new("olaf", 10)
e2 = Employee.new("bob", 12)
e3 = Employee.new("jeff", 9)
e4 = Employee.new("greg", 11)
e5 = Employee.new("stan", 7)
e6 = Employee.new("hector", 7)
e7 = Employee.new("davo", 7)


# (location_name,  address, rent)
l1 = Location.new("Harlem",  "123 Fake St, Foo", 50,[e1,e2])
l2 = Location.new("Upper West",  "No FIXED ADDRESS", 50,[e3,e4])
l3 = Location.new("Upper East",  "42 place place", 50, [e5])
l4 = Location.new("SoHo",  "78 good place", 50,[e6])
l5 = Location.new("West Village", "The Moon", 50,[e7])

r1 = Restaurant.new("Blue Stone Lane", l1)
r2 = Restaurant.new("Blue Stone Lane", l2)
r3 = Restaurant.new("Blue Stone Lane", l3)
r4 = Restaurant.new("Gloria Jeans", l4)
r4 = Restaurant.new("Gloria Jeans", l5)
# r4 = Restaurant.new("Oli's Deli", l1)
# r4 = Restaurant.new("Oli's Deli", l1)
# r4 = Restaurant.new("Oli's Deli", l1)














binding.pry
