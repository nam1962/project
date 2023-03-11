# TODO: implement the router of your app.
class Router

  def initialize(meals_controller, customers_controller, sessions_controller)
    @meals_controller = meals_controller
    @customers_controller = customers_controller
    @sessions_controller = sessions_controller
    @running = true
  end

  def run
    employee = @sessions_controller.login
    while @running
      display_tasks
      action = gets.chomp.to_i
      route_action(action)
    end
  end

  private

# def Login
#   puts '*' * 30
#   puts 'Welcome to the food delivery'
#   puts '*' * 30
#   puts "LOGIN"
#   print "> "
#   puts "username?"
#   puts "password?"
#   puts "Welcome #{username}"
# end


  def display_tasks
    puts '*' * 30
    puts 'Welcome to the food delivery'
    puts '*' * 30
    puts "MENU"
    puts "1 - List all meals"
    puts "2 - Add a new meal"
    puts "3 - List all customers"
    puts "4 - Add a new customer"
    puts "5 - Stop and exit the program"
    print "> "
  end

  def display_manager_tasks
    puts '*' * 30
    puts 'Welcome to the food delivery'
    puts '*' * 30
    puts "MENU"
    puts "1 - List all meals"
    puts "2 - Add a new meal"
    puts "3 - List all customers"
    puts "4 - Add a new customer"
    puts "5 - Stop and exit the program"
    print "> "
  end

  def display_rider_tasks
    puts '*' * 30
    puts 'Welcome to the food delivery'
    puts '*' * 30
    puts "MENU"
    puts "1 - List all meals"
    puts "2 - Add a new meal"
    puts "3 - List all customers"
    puts "4 - Add a new customer"
    puts "5 - Stop and exit the program"
    print "> "
  end

  def route_action(action)
    case action
    when 1 then @meals_controller.list
    when 2 then @meals_controller.add
    when 3 then @customers_controller.list
    when 4 then @customers_controller.add
    when 5 then stop!
    else
      puts 'wrong digit !'
    end
  end

  def stop!
    @running = false
  end
end
