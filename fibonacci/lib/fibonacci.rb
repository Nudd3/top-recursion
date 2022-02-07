# frozen_string_literal: false

def fib(number)
  a, b = 0, 1
  arr = []
  (0...number).each do
    a, b = b, a + b
    arr << a
  end
  arr
end

def fib_recursive(number)
  if [1, 0].include?(number)
    number
  else
    fib_recursive(number - 1) + fib_recursive(number - 2)
  end
end

def fib_rec_one(number)
  number <= 1 ? number : fib_recursive(number - 1) + fib_recursive(number - 2)
end

puts 'Fib iterable'
puts fib(5)
puts "\n"
puts fib(6)

puts "\nFib Recursive"
puts fib_recursive(5)
puts fib_recursive(6)

puts "\nFib Recursive One:"
puts fib_rec_one(5)
puts fib_rec_one(6)
