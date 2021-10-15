puts "Enter any positve integer:"
n = gets.chomp.to_i

if n < 0 then abort("Only positive numbers allowed.") end


if n == 0 or n == 1
  puts "#{n} is neither prime nor composite."
  exit

elsif n == 2
  puts "#{n} is a prime number."
  exit

elsif n.even?
  puts "#{n} is a composite number."
  exit

else
  if n > 5 then x = (n / 2) else x = n - 1 end
  #p x

  3.upto(x) do | factor |
    #p factor
    #p n
    if n % factor == 0
     puts "#{n} is a composite number."
     exit
    end
  end

  puts "#{n} is a prime number."
end

### ------------------------------------------------------   Or   ----------------------------------------------------- ###

# using rubys' built in method of prime
require 'prime'

=begin
if n.prime?
  puts "#{n} is a prime number."
else
  puts "#{n} is a composite number."
end
=end
