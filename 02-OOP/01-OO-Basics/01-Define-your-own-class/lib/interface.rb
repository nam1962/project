require_relative "tea_pot"

first_tea_pot = TeaPot.new("Glass", "Green", 0.75)
second_tea_pot = TeaPot.new("Ceramic", "Brown", 0.5)

puts first_tea_pot.fill

puts second_tea_pot.full?

puts first_tea_pot.material
