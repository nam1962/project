require 'csv'
require_relative "../models/meal"

class MealRepository

  def initialize(csv_file)
    @csv_file = csv_file
    @next_id = 1
    @meals = []
    load_csv if File.exist?(@csv_file)
  end

  def create(meal)
    meal.id = @next_id
    @next_id += 1
    @meals << meal
    save_csv
  end

  def all
    @meals
  end


  private

  # dupliquer une ligne => ctrl + shift + D
  # séléctionner la même valeur plusieurs fois dans le meme fichier => on séléctionne puis ctrl + D

  # %w[id name price]
  # ["id", "name", "price"]

  def load_csv
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
      row[:id] = row[:id].to_i
      row[:price] = row[:price].to_i
      @meals << Meal.new(row)
    end
    @next_id = @meals.last.id + 1 unless @meals.empty?
  end

  def save_csv
    CSV.open(@csv_file, "wb") do |csv|
      csv << %w[id name price]
      @meals.each do |meal|
        csv << [meal.id, meal.name, meal.price]
      end
    end
  end

end