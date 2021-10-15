# asks user for input
puts "Enter any positive integer:"
n = gets.chomp.to_i

if n < 0 then abort("Factorials can only be calculated for positive integers") end

# since our base value 0! = 1, hence we add up starting with 1
# explained => https://www.youtube.com/watch?v=X32dce7_D48&ab_channel=EddieWoo
total = 1

1.upto(n) { | i | total *= i }

puts "\nFactorial of #{n} is #{total}."

####------------------  or    ------------------------------------------ ####

# gamma is an approximation of a factorial
# the ans of this method changes slightly compared to above as we give high input numbers
# while gamma gives result for n-1 by default for gamma(n), we give n+1 to get factorial ofn
puts "\nFactorial of #{n} is #{Math.gamma(n+1).to_i}"
