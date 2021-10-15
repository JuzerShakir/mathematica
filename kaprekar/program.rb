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
#p arr

arr.unshift(0) if arr.count.odd?
#p arr

arr_count = arr.count
# p arr_count

total = 0

members = arr_count / 2
# p members

arr.each_slice(members) do | group |
  #p group
  # group is list so their elements are joined and converted to int and added up to total
  total += group.join.to_i
end
#p total

if total == n
  puts "#{n} is a Kaprekar number."
else
  puts "#{n} is not a Kaprekar number."
end

