def better_written_ruby_optimization(*arrays)
  combined_array = arrays.flatten

  sorted_array = [combined_array.pop]

  combined_array.each do |val|
    i = 0
    while i < sorted_array.length
      if val < sorted_array[i]
        sorted_array.insert(i, val)
        break
      elsif i == sorted_array.length - 1
        sorted_array << val
        break
      end
      i+=1
    end
  end

  # Return the sorted array
  sorted_array
end
