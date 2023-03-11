require_relative "../views/meals_view"
require_relative "../models/meal"

class MealsController

  def initialize(meal_repository)
    @meal_repository = meal_repository
    @view = MealsView.new
  end

  def list
   
  end

  def add
    name = @view.ask_for("Name")
    price = @view.ask_for("Price").to_i
    meal = Meal.new(name: name, price: price)
    @meal_repository.create(meal)
  end

  private

  def dislay_all_meals
    meals = @meal_repository.all
    @view.display_meals(meals)
  end

end