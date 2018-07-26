#Improving for space complexity

# I utilize Heap Sort which has a time complexity
# of O(n log n) and a space complexity of O(1)
# since it sorts in place.

def better_written_ruby_heap_sort(*arrays)
  combined_array = arrays.flatten

  #heapify
  (1...combined_array.length).each do |i|
    #move up
    child = i
    while child > 0
      parent = (child - 1) / 2
      if combined_array[parent] < combined_array[child]
        combined_array[parent], combined_array[child] = combined_array[child], combined_array[parent]
        child = parent
      else
        break
      end
    end
  end

  sort_and_move_down(combined_array)
  combined_array
end

def sort_and_move_down(collection)
  i = collection.length - 1
  while i > 0
    collection[0], collection[i] = collection[i], collection[0]
    i -= 1
    #move down
    parent = 0
    while parent * 2 + 1 <= i
      child = parent * 2 + 1
      if child < i && collection[child] < collection[child + 1]
        child += 1
      end
      if collection[parent] < collection[child]
        collection[parent], collection[child] = collection[child], collection[parent]
        parent = child
      else
        break
      end
    end
  end
end
