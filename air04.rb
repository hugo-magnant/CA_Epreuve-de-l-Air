def remove_adjacent_duplicates(str)
  return 'error' if str.nil? || str.empty?

  new_str = ''
  last_char = nil

  str.each_char do |char|
    unless char == last_char
      new_str += char
      last_char = char
    end
  end

  new_str
end

if ARGV.length != 1
  puts 'error'
  exit(1)
end

input_str = ARGV[0]
result = remove_adjacent_duplicates(input_str)

if result == 'error'
  puts 'error'
  exit(1)
else
  puts result
end
