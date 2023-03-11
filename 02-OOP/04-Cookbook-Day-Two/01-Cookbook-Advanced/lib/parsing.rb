require "nokogiri"
require "open-uri"

file = "lib/strawberry.html"
doc = Nokogiri::HTML.parse(File.open(file), nil, "utf-8")

titles = []
urls = []
list = doc.search(".mntl-card-list-items.card").first(5)

list.each do |card|
  urls << card["href"]
end

list.each do |card|
  title = card.search('.card__title').text.strip
    titles << title
end




# puts "What do you want to do?"
# print "> "
# puts "What ingredient would you like a recipe for?"
# print "> "
ingredient = "strawberry"
# puts "Looking for #{ingredient} recipes on the Internet...
# "

url = "https://www.allrecipes.com/search?q=#{ingredient}"
html = URI.open(url) # open the html of the page
file = Nokogiri::HTML.parse(html)


puts "Which recipe would you like to import? (enter index)"
choice = gets.chomp.to_i
puts "Importing #{titles[choice - 1]}..."


choosen_url = urls[choice -1]
doc = Nokogiri::HTML.parse(URI.open(choosen_url).read, nil, "utf-8")

p doc.search('.article-subheading').text.strip
