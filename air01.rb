def ma_fonction(str_to_cut, separator)
  if str_to_cut.nil? || separator.nil? || separator.empty?
    puts 'error'
    exit(1)
  end

  result = []
  start_idx = 0

  while start_idx < str_to_cut.length
    end_idx = str_to_cut.index(separator, start_idx)
    if end_idx.nil?
      result << str_to_cut[start_idx..-1]
      break
    else
      result << str_to_cut[start_idx...end_idx]
      start_idx = end_idx + separator.length
    end
  end

  result
end

if ARGV.length != 2
  puts 'error'
  exit(1)
end

input_str = ARGV[0]
separator = ARGV[1]

output = ma_fonction(input_str, separator)
puts output
