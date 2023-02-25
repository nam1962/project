
ROMAN = {"M" => 1000, "D" => 500, "C" => 100, "L" => 50, "X" => 10, "V" => 5, "I" => 1}

def roman_to_integer(roman_string)
  # TODO: translate roman string to integer

  sum = 0
  ROMAN.each_key do |key|
    while roman_string.start_with?(key)
      sum += ROMAN[key]
      roman_string.sub!(key, "")
    end
  end
  sum
end


end
