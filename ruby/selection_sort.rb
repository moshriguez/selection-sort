require "date"

def selection_sort(arr)
  sorted_array = []
  while arr.length != 0
    sorted_array << arr.delete_at(arr.index(arr.min))
  end
  sorted_array
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: [-1, 2, 3, 5]"
  puts "=> #{selection_sort([3, -1, 5, 2])}"

  puts "Expecting: [1, 2, 3, 4, 5]"
  puts "=> #{selection_sort([5, 4, 2, 3, 1])}"
  
  puts "Expecting: [2, 2, 2, 4, 5]"
  puts "=> #{selection_sort([5, 2, 2, 4, 2])}"
  # Don't forget to add your own!

  # BENCHMARK HERE, you can print the average runtime
  long_input = []
  100.times { long_input << rand }
  short_input = [5, 56, 2]

  start_time = DateTime.now
  
  1000.times do
    selection_sort(short_input)
    selection_sort(long_input)
  end

  end_time = DateTime.now

  average_runtime = (end_time.to_time - start_time.to_time) / 2000

  puts "BENCHMARK: #{average_runtime}"
end

# Please add your pseudocode to this file
# And a written explanation of your solution
