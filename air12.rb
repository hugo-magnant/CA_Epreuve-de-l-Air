def my_quick_sort(array)
  return array if array.length <= 1

  pivot = array.first
  less = []
  greater = []

  array[1..-1].each do |element|
    if element <= pivot
      less << element
    else
      greater << element
    end
  end

  return my_quick_sort(less) + [pivot] + my_quick_sort(greater)
end

if ARGV.empty?
  puts "error"
  exit(1)
end

begin
  input_array = ARGV.map { |x| Integer(x) }
rescue ArgumentError
  puts "error"
  exit(1)
end

sorted_array = my_quick_sort(input_array)
puts sorted_array.join(" ")
