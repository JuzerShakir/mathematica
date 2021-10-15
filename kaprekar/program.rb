puts "Enter any positive integer:"
n = gets.chomp.to_i

if n <= 0
  puts "Only positive integers."
  exit
end

n_sqr = n ** 2
#p n_sqr

# converts int to array
arr = n_sqr.digits.reverse
# length of squared number
arr_count = arr.count
#p arr
# p arr_count

# if the length is odd we add a 0 before the number, this wont change the value
# we will need an even number of digits for grouping
arr.unshift(0) if arr_count.odd?
#p arr

# that will hold the value of sum of digits
total = 0

# we group numbers with breaker number of digits which will be half of the lenght rounded to the nearest integer
# since length of our arr which holds square value will always be even we can directly give arr_count..
# but for number 1 it is special case where length of 1 square is 1 and dividng that by 2 will give 0.5 and array slicing will raise error
# so we round to nearest int
breaker = (arr_count.to_f / 2).round

arr.each_slice(breaker) do | ele |
  #p breaker
  #p ele
  # each group of numbers are joined and converted to int and added up to total
  total += ele.join.to_i
end

#p total

# checks if input number is equal to summed up number of squares
if total == n
  puts "#{n} is a Kaprekar number."
else
  puts "#{n} is not a Kaprekar number."
end

