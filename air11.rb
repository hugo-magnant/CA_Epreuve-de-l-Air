if ARGV.length != 2
  puts "error"
  exit(1)
end

char = ARGV[0]
height = ARGV[1].to_i

if height <= 0
  puts "error"
  exit(1)
end

(1..height).each do |i|
  spaces = ' ' * (height - i)
  chars = char * (2 * i - 1)
  puts "#{spaces}#{chars}"
end
