# we use prime library to find prime numbers as their factors similar
require 'prime'

# asks user for input
puts "Enter any positive integer:"
n = gets.chomp.to_i

# checking user input
if n == 1
  puts "Factor of 1 is 1 itself."
  exit
elsif n > 1
  factors = [1, n]
else
  puts "Enter only positive integer!"
  exit
end

# if input is prime
if n.prime?
 puts "#{n} is a Prime number. Its factors are: #{factors}"
 exit
end

# since we know 1 is a factor of any number, we start our calculations from 2
2.upto(n) do | multiple |
  # this line is key to stop loop earlier
  # it will stop looping if it finds that multiple is already included in list which means its calculation is already done
  if factors.include?(multiple)
    break
  elsif n % multiple == 0
    # multiple added to factors list
    factors << multiple
    # n = multiple * second_multiple
    second_multiple = n / multiple

    # another key line to stop loop earlier
    # we dont add duplicate entries to factors
    if second_multiple == multiple
     break
    else
      factors << second_multiple
    end
  end
end

# arranging factors in ascending order
puts "Factors of #{n} are:\n#{factors.sort}"
