# TODO: you can build your horse race program here!

# 1) Créer un array de chevaux

grand_prix = ["belle etoile", "grand gagneux", "ptit bouseux", "zoe", "tartignole"]

# 2) Afficher la liste des chevaux

grand_prix.each_with_index do | cheval, index |
	puts "#{cheval} porte le dossard #{index + 1} dans la course"
end


# 3) Demander à l'utilisateur le cheval sur lequel il veut miser

puts "Bonjour Parieur, quel est le dossard de ton pari gagnant ?"
print ">"
  # J'attend une reponse en chiffre
  # Stocke dans une variable
  pari = gets.chomp.to_i

# 4) Tirer au sort un gagnant parmi les chevaux de mon array
  # Stocker dans une variable le gagnant
 gagnant = grand_prix.sample(1)
 resultat = grand_prix.index("#{gagnant}) + 1


# 5) Si le gagnant est le cheval choisi => On affiche 'bravo'
    # Sinon On affiche 'Perdu'

    if resultat = pari
      puts "Bingo c\'est le #{resultat}"
    else
      puts "essaie encore"

    end
