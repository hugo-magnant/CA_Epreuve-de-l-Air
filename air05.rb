def apply_operation(numbers, operation)
  operator = operation[0]
  operand = operation[1..-1].to_i

  case operator
  when '+'
    numbers.map { |num| num + operand }
  when '-'
    numbers.map { |num| num - operand }
  else
    'error'
  end
end

if ARGV.length < 2
  puts 'error'
  exit(1)
end

operation = ARGV.last
numbers = ARGV[0..-2].map do |arg|
  if arg =~ /^\d+$/
    arg.to_i
  else
    puts 'error'
    exit(1)
  end
end

result = apply_operation(numbers, operation)

if result == 'error'
  puts 'error'
  exit(1)
else
  puts result.join(' ')
end
