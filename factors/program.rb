# we use prime library to find prime numbers as their factors similar
require 'prime'

# asks user for input
puts "Enter any positive integer:"
n = gets.chomp.to_i

# checking user input
if n == 1
  puts "\nFactor of 1 is 1 itself."
  exit
elsif n > 1
  factors = [1, n]
else
  puts "Enter only positive integer!"
  exit
end

# if input is prime
if n.prime?
 puts "\n#{n} is a Prime number. Its factors are: #{factors}"
 exit
end

# since we know 1 is a factor of any number, we start our calculations from 2
2.upto(n-1) do | factor |
  # this line is key to stop loop earlier
  # it will stop looping if it finds that factor is already included in list which means its calculation is already done
  if factors.include?(factor)
    break
  elsif n % factor == 0
    # factor added to factors list
    factors << factor
    # n = factor * second_factor
    second_factor = n / factor

    # another key line to stop loop earlier
    # we dont add duplicate entries to factors
    if second_factor == factor
     break
    else
      factors << second_factor
    end
  end
end

# arranging factors in ascending order
puts "\nFactors of #{n} are:\n#{factors.sort}"
