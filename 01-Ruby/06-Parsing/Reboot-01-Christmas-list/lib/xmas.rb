# TODO: you can build your christmas list program here!

# Message de bienvenue
puts "\n"
puts "*" * 31
puts "*" + " " * 29 + "*"
puts "*  Welcome to Christmas List  *"
puts "*" + " " * 29 + "*"
puts "*" * 31

# gift_list = [
#   {name:"sockets",status: false},
#   {name: "ruby book", status: false},
#   {name: "macbook", status: false}
# ]

def display(gift_list)
  # DU TRAVAIL
  gift_list.each_with_index do |gift, index|
    puts gift[:status]
    if gift[:status] == false
      statut = "[ ]"
    else
      statut = "[X]"

    end
    puts "#{index + 1}. - #{statut} #{gift[:name]}"
  end
end
