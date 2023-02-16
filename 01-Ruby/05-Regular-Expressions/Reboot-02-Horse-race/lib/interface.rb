# TODO: you can build your horse race program here!

# 1) Créer un array de chevaux

grand_prix = ["belle etoile", "grand gagneux", "ptit bouseux", "zoe", "tartignole"]
balance_cash = 100
# 2) Afficher la liste des chevaux

while balance_cash >= 0


grand_prix.each_with_index do | cheval, index |
  puts "#{cheval} porte le dossard #{index + 1} dans la course"
end


# 3) Demander à l'utilisateur le cheval sur lequel il veut miser

puts "Bonjour Parieur, quel est le dossard de ton pari gagnant ?"
print ">"
# J'attend une reponse en chiffre
# Stocke dans une variable
pari = gets.chomp.to_i - 1

# 4) Tirer au sort un gagnant parmi les chevaux de mon array
# Stocker dans une variable le gagnant
gagnant = grand_prix[pari]


# 5) Si le gagnant est le cheval choisi => On affiche 'bravo'
# Sinon On affiche 'Perdu'

#while balance_cash >= 0

  if gagnant == pari
    puts "Bingo c'est le #{gagnant}"
    balance_cash = balance_cash + 50
  else
    puts "essaie encore"
    balance_cash = balance_cash - 10

  end

end

Puts "tu n'as plus un rond"
