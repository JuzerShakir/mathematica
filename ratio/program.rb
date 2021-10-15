# asks user for input
puts "Enter any positive integer:"
n1, n2 = gets.chomp.split('/').map(&:to_i)
#p n1, n2

gcd  = n1.gcd(n2)
#p lcm


n1 = n1 / gcd
n2 = n2 / gcd

# output as rational number
puts "The greatest common divisor is #{gcd}
 with the simplest form #{Rational(n1, n2)}"
