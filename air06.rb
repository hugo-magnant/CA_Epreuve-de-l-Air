require "unicode_utils"

def filter_strings(array, string)
  normalized_string = UnicodeUtils.nfd(string).downcase.gsub(/[^\w]/, "")

  array.select do |word|
    normalized_word = UnicodeUtils.nfd(word).downcase.gsub(/[^\w]/, "")
    normalized_word.include?(normalized_string)
  end
end

# Vérifie le nombre d'arguments
if ARGV.length < 2
  puts "error"
  exit(1)
end

# Récupère le dernier argument comme chaîne à chercher
string_to_match = ARGV.last

# Récupère tous les arguments sauf le dernier comme tableau de mots
words = ARGV[0..-2]

# Applique la fonction de filtrage
filtered_words = filter_strings(words, string_to_match)

# Affiche le résultat
if filtered_words.empty?
  puts ""
else
  puts filtered_words.join(", ")
end
