class View
  def display(recipes)
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1}. #{recipe.name}: #{recipe.description}"
    end
  end

  def ask_user_for(stuff)
    puts "#{stuff.capitalize}?"
    print "> "
    return gets.chomp
  end

  def ask_user_for_index
    puts "Index?"
    print "> "
    return gets.chomp.to_i - 1
  end

  def ask_user_for_ingredient
    puts "What ingredient would you like a recipe for?"
    print "> "
    ingredient = gets.chomp
    puts "Looking for #{ingredient} recipes on the Internet..."
    ingredient
  end

  def display_list(titles)
    titles.each_with_index do |title, index|
      puts "#{index +1}. #{title}"
    end

  end

  def ask_user_for_recipe(titles)
    puts "Which recipe would you like to import? (enter index)"
    choice = gets.chomp.to_i
    puts "Importing #{titles[choice - 1]}..."
    return choice
  end
end
