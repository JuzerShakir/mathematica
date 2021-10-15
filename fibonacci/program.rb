puts "Enter a positive integer to check if its a fibonacci number:"
n = gets.chomp.to_i

if n > 0
  fibonacci_seq = [0, 1]

  loop do
    fibonacci_num = fibonacci_seq[-1] + (fibonacci_seq[-2])
    #p fibonacci_num
    break if fibonacci_num > n
    fibonacci_seq << fibonacci_num
    break if fibonacci_num == n
  end

  # output
  if fibonacci_seq.include?(n)
    idx = fibonacci_seq.index(n)
    puts "\nSuccess! Number you entered is a fibonacci number."
    puts "Its index in fibonacci sequence is #{idx}."

  else
    prevs = fibonacci_seq[-1]
    nextt = fibonacci_seq[-1] + (fibonacci_seq[-2])
    puts "\nNumber entered is not a fibonacci number."
    puts "Its previous nearest fibonacci number is #{prevs}."
    puts "And next nearest fibonacci number is #{nextt}."
  end

else
  puts "\nSorry! Fibonacci calculation for only positive integers."
end
