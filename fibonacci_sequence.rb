def fib(num)
  a = 0
  b = 1
  until num <= 0
    sum = a + b
    a = b
    b = sum
    num -= 1
  end

  return sum
end

puts "Enter a value, then hit 'return' to find the Fibonacci number:"
ask = gets.chomp.to_i
puts "The Fibonacci number of #{ask} is #{fib(ask)}"
