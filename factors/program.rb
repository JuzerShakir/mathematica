require 'prime'

puts "Enter any positive integer:"
n = gets.chomp.to_i

if n == 1
  puts "\nFactor of 1 is 1 itself."
  exit
elsif n > 1
  factors = [1, n]
else
  puts "Enter only positive integer!"
  exit
end

if n.prime?
 puts "\n#{n} is a Prime number. Its factors are: #{factors}"
 exit
end

2.upto(n-1) do | factor |
  # this line is key to stop loop earlier
  if factors.include?(factor)
    break
  elsif n % factor == 0
    factors << factor
    second_factor = n / factor

    # another key line to stop loop earlier
    if second_factor == factor
     break
    else
      factors << second_factor
    end
  end
end

puts "\nFactors of #{n} are:\n#{factors.sort}"
