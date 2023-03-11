require 'csv'
require_relative "../models/order"

class OrderRepository
  def initialize(csv_file)
    @csv_file = csv_file
    @next_id = 1
    @orders = []
    load_csv if File.exist?(@csv_file)
  end

  def create(order)
    order.id = @next_id
    @next_id += 1
    @orders << order
    save_to_csv
  end

  def undelivered
    @orders.reject { |order| order.delivered?}
  end

  # def mark_recipe_as_done(index)
  #   recipe = @recipes[index]
  #   recipe.mark_as_done!
  #   save_to_csv
  # end

  private

  def save_to_csv
    CSV.open(@csv_file, "wb") do |csv|
      csv << ["id", "delivered", "meal", "customer", "employee"]
      @orders.each do |order|
        csv << [order.id, order.delivered, order.meal, order.customer, order.employee]
      end
    end
  end

  def load_csv
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
      row[:id]        = row[:id].to_i
      row[:delivered] = row[:delivered]
      row[:meal]      = row[:meal]
      row[:customer]  = row[:customer]
      row[:employee]  = row[:employee]

      @orders << Order.new(row)
    end
    @next_id = @orders.last.id + 1 unless @orders.empty?
  end
end
