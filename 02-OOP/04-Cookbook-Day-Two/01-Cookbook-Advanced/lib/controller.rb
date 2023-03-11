require "nokogiri"
require "open-uri"
require_relative "view"
require_relative "recipe"

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  # ACTIONS UTILISATEURS

  def list
    display_tasks
  end

  def add
    # 1. Ask user for a name (view)
    name = @view.ask_user_for("name")
    # 2. Ask user for a description (view)
    description = @view.ask_user_for("description")
    # 3. Create recipe (model)
    recipe = Recipe.new(name, description)
    # 4. Store in cookbook (repo)
    @cookbook.create(recipe)
    # 5. Display
    display_tasks
  end

  def remove
    # 1. Display recipes
    display_tasks
    # 2. Ask user for index (view)
    index = @view.ask_user_for_index
    # 3. Remove from cookbook (repo)
    @cookbook.destroy(index)
    # 4. Display
    display_tasks
  end

  def import
   ingredient = @view.ask_user_for_ingredient
   url = "https://www.allrecipes.com/search?q=#{ingredient}"
   html = URI.open(url) # open the html of the page
   file = Nokogiri::HTML.parse(html)
   titles = []
   urls = []
     list = file.search(".mntl-card-list-items.card").first(5)

   list.each do |card|
    urls << card["href"]
  end

  list.each do |card|
    title = card.search('.card__title').text.strip
      titles << title
  end

  # ratings = []
  #   list_ratings = file.search(".has_rating").first(5)

  #   list_ratings.each do |rating|
  #   ratings << rating
  # end

  @view.display_list(titles)
  index = @view.ask_user_for_recipe(titles)

   choosen_url = urls[index - 1]
   doc = Nokogiri::HTML.parse(URI.open(choosen_url).read, nil, "utf-8")
   description = doc.search('.article-subheading').text.strip
   name = doc.search(".article-heading").text.strip
   recipe = Recipe.new(name, description)
   @cookbook.create(recipe)
  end

  private

  def display_tasks
    # 1. Get recipes (repo)
    recipes = @cookbook.all
    # 2. Display recipes in the terminal (view)
    @view.display(recipes)
  end
end
