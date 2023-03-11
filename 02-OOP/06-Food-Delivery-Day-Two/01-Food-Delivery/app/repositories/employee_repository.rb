require 'csv'
require_relative "../models/employee"

class EmployeeRepository
  def initialize(csv_file)
    @csv_file = csv_file
    @next_id = 1
    @employees = []
    load_csv if File.exist?(@csv_file)
  end

  # def create(employee)
  #   employee.id = @next_id
  #   @next_id += 1
  #   @employees << employee
  #   save_to_csv
  # end

  def all
    @employees
  end

  def all_riders
    @employees.select {|employee| employee.rider?}
  end

  def find(id)
    @employees.find do |employee|
      employee.id == id
    end
  end

  def find_by_username(username)
    @employees.find do |employee|
      employee.username == username
    end
  end

  private

  def save_to_csv
    CSV.open(@csv_file, "wb") do |csv|
      csv << ["id", "username", "password", "role"]
      @employees.each do |employee|
        csv << [employee.id, employee.username, employee.password, employee.role]
      end
    end
  end

  def load_csv
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
      row[:id]    = row[:id].to_i
      row[:username]  = row[:username]
      row[:password] = row[:password]
      row[:role] = row[:role]
      @employees << Employee.new(row)
    end
    # @next_id = @employees.last.id + 1 unless @employees.empty?
  end
end
