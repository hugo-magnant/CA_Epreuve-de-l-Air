def ma_fonction(str, sep)
  return [] if str.nil? || sep.nil?

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

if ARGV.length != 1
  puts "error"
  exit
end

# Utilisation de la fonction avec des espaces, tabulations et retours à la ligne comme séparateurs
result = ma_fonction(ARGV[0], " \t\n")
result.each { |word| puts word }
