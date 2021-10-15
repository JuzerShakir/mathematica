puts "Enter any positve integer:"
n = gets.chomp.to_i

if n < 0 then abort("Only positive numbers allowed.") end


if n == 0 or n == 1
  puts "#{n} is neither prime nor composite."
  exit

# since 2 is the only even number which is prime
elsif n == 2
  puts "#{n} is a prime number."
  exit

# all even numbers except for 2 is composite
elsif n.even?
  puts "#{n} is a composite number."
  exit

else
  # if n > 5 then...
  # we wont be calculating if n is a multiple of a number from 1..n because..
  # the calculation would take time and put load on memory for big numbers...
  # so we perform calculation from number 3 -- n * 0.5
  # why from 3? because 1 and n itself are divisors of any number n. and not 2 because we know n is odd and no odd numbers are multiple of 2


  # we give n-1 for n less than 5 because we dont want to check if n itself is divisor to itself because it is
  if n > 5 then x = (n / 2) else x = n - 1 end
  #p x

  3.upto(x) do | multiplier |
    #p multiplier
    #p n
    # a modulo operator will return 0 if multiplier can fully divide n which means n is a multiple of that multiplier..
    # ..which means that number is a composite and further operations are not neccessory, we terminate program
    if n % multiplier == 0
     puts "#{n} is a composite number."
     exit
    end
  end

  # if no divisor was found then its a prime number
  puts "#{n} is a prime number."
end

### ------------------------------------------------------   Or   ----------------------------------------------------- ###

# using rubys' built in method of prime
require 'prime'

if n.prime?
  puts "#{n} is a prime number."
else
  puts "#{n} is a composite number."
end
