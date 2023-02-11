


DISHES_CALORIES = {
  "no_meal" => 0,
  "Hamburger" => 250,
  "Cheese Burger" => 300,
  "Veggie Burger" => 540,
  "Vegan Burger" => 350,
  "Sweet Potatoes" => 230,
  "Salad" => 15,
  "Iced Tea" => 70,
  "Lemonade" => 90,
}

def poor_calories_counter(burger, side, beverage, meal = "no_meal")
  DISHES_CALORIES[burger] + DISHES_CALORIES[side] + DISHES_CALORIES[beverage]
end



def calories_counter(orders)
  # TODO: return number of calories for a less constrained order
  DISHES_CALORIES["Cheesy Combo"] = poor_calories_counter("Cheese Burger", "Sweet Potatoes", "Lemonade")
  DISHES_CALORIES["Veggie Combo"] = poor_calories_counter("Veggie Burger", "Sweet Potatoes", "Iced Tea")
  DISHES_CALORIES["Vegan Combo"] = poor_calories_counter("Vegan Burger", "Salad", "Lemonade")
  total_k = 0
  orders.each do |order|
  total_k += DISHES_CALORIES[order]
  end
  return total_k
end

p calories_counter([ "Hamburger","Cheesy Combo"])
