require_relative "xmas.rb"



choice = ""
gift_list = [
  {name:"sockets",status: false},
  {name: "ruby book", status: false},
  {name: "macbook", status: false}
]

while choice != "quit"
  puts "Which action [list|add|delete|mark|quit]?"
  print "> "
  choice = gets.chomp

  case choice
  when "list"
    # Affiche CHAQUE element de l'array gift list
    display(gift_list)
  when "add"
    # Demander a l'utilisateur le cadeau a ajouter
    puts "> Which gift do yo want to add ?"
    print "> "
    # Stocker dans une variable
    new_gift = gets.chomp
    # Ajouter ce cadeau dans l'array
    gift_list << {name: new_gift, status: false}
    display(gift_list)
  when "delete"
    # Demander quel cadeau il veut delete (INDEX)
    puts "> Which gift number do yo want to delete ?"
    display(gift_list)
    print "> "
    del_gift = gets.chomp.to_i
    gift_list.delete_at(del_gift - 1)
    display(gift_list)    # Supprime cet element
  when "mark"
    # Demander quel cadeau il veut marquer (INDEX)
    #puts "> Which gift number do yo want to mark ?"
    display(gift_list)
    print "> "
    mark_gift = gets.chomp.to_i
    gift(mark_gift)[:status]=true
    gift_list
    display(gift_list)    # Supprime cet element
  when "quit"
    puts "Goodbye"
  else
    puts "Wrong entry ! Try Again !"
  end
end
