def sum_odd_indexed(array)
  # TODO: computes the sum of elements at odd indexes (1, 3, 5, 7, etc.)
  #       You should use Enumerable#each_with_index
  sum = 0

  array.each_with_index do |element, index|

  sum += element if index.odd?

  end
  return sum
end



def even_numbers(array)
  # TODO: Return the even numbers from a list of integers.
  #       You should use Enumerable#select
  array.select do |element|
    element.even?
  end

end

def short_words(array, max_length)
  # TODO: Take an array of words, return the array of words not exceeding max_length characters
  #       You should use Enumerable#reject
  array.reject do |element|
    element.length > max_length
  end
end

def first_under(array, limit)
  # TODO: Return the first number from an
  # array that is less than limit.
  #       You should use Enumerable#find
  array.find do |element|
    element < limit
  end
end

def add_bang(array)
  # TODO: Take an array of strings and return a new array with "!" appended to each string.
  #       You should use Enumerable#map
  array.map do |element|
    element + "!"
  end
end

def concatenate(array)
  # TODO: Concatenate all strings given in the array.
  #       You should use Enumerable#reduce
  array.reduce do |sentence, element|
    sentence + element
  end
end

def sorted_pairs(array)
  # TODO:

  array_temp = []
  array.each_slice(2) do |element|
    array_temp << element.sort
  end
  return array_temp.
end
