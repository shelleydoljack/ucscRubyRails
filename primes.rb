#! /usr/bin/env ruby

# create array to store prime numbers
primes = Array.new

# create a list of numbers 1 to 1000
# list = (1..1000)

# check for prime numbers in list
# list.each do |i|

for i in 1..1000
  # tests if item is prime
  case
    when i <= 1
      next
    when i == 2
      # add number to primes array
      primes.push(i)
    when i % 2 == 0
      next
    when i % 2 == 1 # odd number
      # assume number is prime until it isn't
      is_prime = "yes"

      # check if list item mod prime number yields any non zeroes
      primes.each do |prime_num|
        if i % prime_num == 0
          # encountered a non prime number
          is_prime = "no"
          break
        end
      end

      # number is prime unless it was previously found to be evenly divisible, e.g. is_prime = "no"
      if is_prime == "yes"
        then
          primes.push(i) # add number to primes list
        end
  end
end

# print out comma-separated list of primes
puts primes.join(", ")
