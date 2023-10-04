def sorted_fusion(array1, array2)
  array1.concat(array2).sort
end

if ARGV.length < 3 || !ARGV.include?('fusion')
  puts 'error'
  exit(1)
end

fusion_index = ARGV.index('fusion')

array1 = ARGV[0..fusion_index - 1].map(&:to_i)
array2 = ARGV[(fusion_index + 1)..-1].map(&:to_i)

if array1.any? { |ele| !ele.is_a?(Integer) } || array2.any? { |ele| !ele.is_a?(Integer) }
  puts 'error'
  exit(1)
end

new_array = sorted_fusion(array1, array2)

puts new_array.join(' ')
