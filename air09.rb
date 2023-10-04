def ma_rotation(array)
  return array if array.empty?
  
  first_element = array.shift
  array.push(first_element)
end

if ARGV.empty?
  puts 'error'
  exit(1)
end

rotated_array = ma_rotation(ARGV.dup)

puts rotated_array.join(', ')
