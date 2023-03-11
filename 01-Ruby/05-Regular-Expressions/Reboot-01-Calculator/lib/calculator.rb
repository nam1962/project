# calculator.rb
def calculate(first_number, second_number, operator)
  # compute and return result
  return first_number.method(operator).(second_number.to_f)
end
