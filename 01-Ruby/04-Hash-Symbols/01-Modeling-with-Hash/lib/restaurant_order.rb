def poor_calories_counter(burger = "no_choice", side = "no_choice", beverage = "no_choice")

  # TODO: return number of calories for this restaurant order
# Créer menu avec calories en hash

  menu = {
    "no_choice" => 0,
    "Hamburger" => 250,
    "Cheese Burger" =>	300,
    "Veggie Burger" =>	540,
    "Vegan Burger" =>	350,
    "Sweet Potatoes" =>	230,
    "Salad" =>	15,
    "Iced Tea" =>	70,
    "Lemonade" =>	90
  }
  menu["#{burger}"] + menu["#{side}"] + menu["#{beverage}"]
end

puts poor_calories_counter("Hamburger")
