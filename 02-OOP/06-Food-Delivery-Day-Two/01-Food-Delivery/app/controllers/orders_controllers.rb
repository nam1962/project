# require_relative "../views/meal_view"
# require_relative "../models/meal"

# class MealsController
#   def initialize(meal_repository)
#     @meal_repository = meal_repository
#     @meal_view = MealView.new
#   end

#   # USER ACTIONS

#   def list
#     display_meals
#   end

#   def add
#     name = @meal_view.ask_user_for(:name)
#     price = @meal_view.ask_user_for(:price).to_i
#     meal = Meal.new(name: name, price: price)
#     @meal_repository.create(meal)
#     display_meals
#   end


#   private

#   def display_meals
#     # 1. Get recipes (repo)
#     meals = @meal_repository.all
#     # 2. Display recipes in the terminal (view)
#     @meal_view.display_meals(meals)
#   end
# end

