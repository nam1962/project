def sum_with_for(min, max)

  return -1 if min > max

  # CONSTRAINT: you should use a for..end structure

  sum = 0

  for num in (min..max).to_a
    sum = sum + num
  end
  return sum
end

def sum_with_while(min, max)

  return -1 if min > max

  # CONSTRAINT: you should use a while..end structure
  sum = 0
  num = min
  while num <= max
    sum = sum + num
    num = num + 1
  end
  return sum
end
