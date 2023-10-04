def ma_fonction(array_de_strings, separateur)
  if array_de_strings.nil? || array_de_strings.empty? || separateur.nil?
    puts 'error'
    exit(1)
  end

  result = ""
  array_de_strings.each_with_index do |str, index|
    result += str
    result += separateur unless index == array_de_strings.length - 1
  end

  result
end

if ARGV.length < 2
  puts 'error'
  exit(1)
end

array_input = ARGV[0...-1]
separator = ARGV[-1]

output = ma_fonction(array_input, separator)
puts output
