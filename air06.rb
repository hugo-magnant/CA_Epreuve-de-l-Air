def filter_strings(array, string)
  array.select { |word| word.include?(string) }
end

if ARGV.length < 2
  puts 'error'
  exit(1)
end

string_to_match = ARGV.last
words = ARGV[0..-2]

filtered_words = filter_strings(words, string_to_match)

if filtered_words.empty?
  puts ''
else
  puts filtered_words.join(', ')
end
