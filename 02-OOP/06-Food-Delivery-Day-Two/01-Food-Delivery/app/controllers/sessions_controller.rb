# require_relative "../views/employee_view"
# require_relative "../models/employee"

class SessionsController
  def initialize(employee_repository)
    @employee_repository = employee_repository
      end


  # USER ACTIONS


  def login
    puts "LOGIN"
    print "> "
    puts "username?"
    print "> "
    @login_name =  gets.chomp
    print "> "
    puts "password?"
    print "> "
    @password = gets.chomp

    @employee = @employee_repository.find_by_username(@login_name)
    if @employee && @employee.password == @password
      print "> "
      puts "Welcome #{@login_name}"
      @employee
    else
      print "> "
      puts "same player shoots again"
      login

  end
end
end
# username : identifier l'employé et son role
# password : valider et ouvrir interface manager ou rider
