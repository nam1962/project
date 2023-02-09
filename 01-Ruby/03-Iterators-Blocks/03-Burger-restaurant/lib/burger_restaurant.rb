def burger(patty, sauce, topping)

# TODO: code the `burger` method
if block_given?
burger = ["bread", yield(patty), sauce, topping, "bread"]
else
burger = ["bread", patty, sauce, topping, "bread"]
end

# empty_burger = ["bread", "bread"]
# complete_burger = empty_burger.insert(1, *burger_ingredients)





# choisir ingredients


end
