class MealsView

  def display_meals(meals)
    meals.each_with_index do |meal, index|
      puts "#{index + 1}. #{meal.name} - #{meal.price}"
    end
  end

  def ask_for(stuff)
    puts "Wich #{stuff}?"
    return gets.chomp
  end

end