def find_single_element(array)
  if array.nil? || array.empty?
    puts 'error'
    exit(1)
  end

  frequency = Hash.new(0)

  array.each do |elem|
    frequency[elem] += 1
  end

  frequency.each do |k, v|
    return k if v == 1
  end

  'error'
end

if ARGV.empty?
  puts 'error'
  exit(1)
end

result = find_single_element(ARGV)
if result == 'error'
  puts 'error'
  exit(1)
else
  puts result
end
