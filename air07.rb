def sorted_insert(array, new_element)
  array << new_element
  array.sort
end

if ARGV.length < 2 || !ARGV.all? { |arg| arg.match?(/^\d+$/) }
  puts 'error'
  exit(1)
end

new_element = ARGV.last.to_i
array = ARGV[0..-2].map(&:to_i)

new_array = sorted_insert(array, new_element)

puts new_array.join(' ')
