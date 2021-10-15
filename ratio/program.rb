puts "Enter any positive integer:"
n1, n2 = gets.chomp.split('/').map(&:to_i)
#p n1, n2

if n2 == 0
  puts "The value of denominator cannot be 0."
  exit
end

begin
  gcd  = n1.gcd(n2)
#p gcd
rescue
  puts "Unexpected input. Try Again."
  exit
end

if gcd == 1
  puts "The greatest common divisor is #{gcd} of #{n1}/#{n2}.
And it is already in its simplest form."
  exit
end

simple_n1 = n1 / gcd
simple_n2 = n2 / gcd

simplest_form = Rational(simple_n1, simple_n2)

puts "The greatest common divisor is #{gcd} of #{n1}/#{n2}.
And its simplest form is #{simplest_form}."
