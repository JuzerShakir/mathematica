puts "Enter any positive integer:"
n = gets.chomp.to_i

if n < 0 then abort("Factorials can only be calculated for positive integers") end

total = 1

1.upto(n) { | i | total *= i }

puts "\nFactorial of #{n} is #{total}."

####------------------  or    ------------------------------------------ ####

# while gamma gives result for n-1 by default for gamma(n), we give n+1 to get factorial ofn
puts "\nFactorial of #{n} is #{Math.gamma(n+1).to_i}"
