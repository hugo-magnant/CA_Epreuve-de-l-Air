def ma_fonction(str, sep)
  if str.nil? || sep.nil?
    puts "error"
    exit
  end

  arr = []
  word = ""

  str.each_char do |char|
    if sep.include?(char)
      unless word.empty?
        arr << word
        word = ""
      end
    else
      word += char
    end
  end

  arr << word unless word.empty?

  arr
end

if ARGV.length != 2
  puts "error"
  exit
end

result = ma_fonction(ARGV[0], ARGV[1])
result.each { |word| puts word }
