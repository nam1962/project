# TODO: you can build your instacart program here!
store = {kiwi: 1.25, banana: 0.5, mango: 4, asparagus: 9}
cart = []
# affiche un message de bienvenue
puts "Welcome, here is our inventory"
store.each_pair {|vegetable, price| puts "#{vegetable} at #{price}"}
# Definir un hash contenant les articles du magasin
puts "What do you want to buy ? if nothing, type \"quit\" "
# Definir son panier vide
print ">"
# Afficher la liste des articles avec leur prix associé

# Entrer dans la loop
action = gets.chomp
unless action == "quit"
  if store.key?(action) == true
  puts cart
  # Demande quel article/ou ce qu'il veut faire
  # Soit il quitte/ soit l'article n'existe pas/ soit il selectionne un article
  # Si il selectionne un article l'ajouter dans le panier
  end
# Afficher la facture avec le prix total
end
puts "Thank for coming"
