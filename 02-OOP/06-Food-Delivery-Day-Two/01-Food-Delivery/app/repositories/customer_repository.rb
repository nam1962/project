require 'csv'
require_relative "../models/customer"

class CustomerRepository
  def initialize(csv_file)
    @csv_file = csv_file
    @next_id = 1
    @customers = []
    load_csv if File.exist?(@csv_file)
  end

  def create(customer)
    customer.id = @next_id
    @next_id += 1
    @customers << customer
    save_to_csv
  end

  def all
    @customers
  end

  def find(id)
    @customers.find do |customer|
      customer.id == id
    end
  end

  private

  def save_to_csv
    CSV.open(@csv_file, "wb") do |csv|
      csv << ["id", "name", "address"]
      @customers.each do |customer|
        csv << [customer.id, customer.name, customer.address]
      end
    end
  end

  def load_csv
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
      row[:id]    = row[:id].to_i
      row[:name]  = row[:name]
      row[:address] = row[:address]
      @customers << Customer.new(row)
    end
    @next_id = @customers.last.id + 1 unless @customers.empty?
  end
end
