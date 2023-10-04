if ARGV.length != 1
  puts "error"
  exit(1)
end

filename = ARGV[0]

begin
  File.open(filename, 'r') do |file|
    puts file.read
  end
rescue Errno::ENOENT
  puts "error"
  exit(1)
end
