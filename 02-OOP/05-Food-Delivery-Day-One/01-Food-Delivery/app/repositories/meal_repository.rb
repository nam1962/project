require 'csv'
require_relative '../models/meal'

class MealRepository
  def initialize(csv_file)
    @meals = []
    @next_id = 1
    @csv_file = csv_file
    load_csv if File.exist?(@csv_file)
  end

  def create(meal)
    meal.id = @next_id
    @next_id += 1
    @meals << meal
    save_to_csv
  end

  def all
    return @meals
  end

  def find(meal)
    @csv_file.foreach(filepath, headers: :first_row) do |row|
      puts "#{row[:name]}"
    end
  end

  private

  def save_to_csv
    CSV.open(@csv_file, "wb") do |csv|
      csv << [:id, :name, :price]
      @meals.each do |meal|
        csv << [meal.id, meal.name, meal.price]
      end
    end
  end

  def load_csv
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
      row[:id] = row[:id].to_i
      row[:price] = row[:price].to_i
      @meals << Meal.new(row)
    end
    @next_id = @meals.empty? ? 1 : @meals.last.id + 1
  end
end
