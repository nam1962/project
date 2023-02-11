def array_to_hash(array)
  # TODO: implement the method :)
  new_hash = {}
  array.each_with_index do |first_name, index|
    if block_given?
      new_hash[yield(index)] = first_name
    else
      new_hash[index.to_s] = first_name
    end
  end
  new_hash
end
