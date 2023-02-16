# TODO: you can build your calculator program here!
# Dire bonjour à l'utilisateur
require_relative "calculator"

# Dire bonjour à l'utilisateur
puts "Hello you !"
# answer = "Y"

while true
  # Demande à l'utilisateur quel est le premier chiffre
  puts "Enter a first number"
  # Stocker le premier chiffre dans une variable
  first_number = gets.chomp.to_i
  # Demande à l'utilisateur un deuxieme chiffre
  puts "Enter a second number"
  # Stocke ce deuxieme chiffre dans une variable
  second_number= gets.chomp.to_i
  # Demande à l'utilisateur l'opérateur
  puts "Choose operator [+][-][*][/]"
  # Stocke cet operateur dans une variable
  operator = gets.chomp
  # On calcule
  # resultat = nb1.method(operator).(nb2)
  puts calculate(first_number, second_number, operator)

  # Demander à l'utilisteur si il veut continuer ou pas
  puts "Do you want to calculate again? [Y/N]"
  # Lire sa reponse
  answer = gets.chomp
  break if answer == "N"
end
