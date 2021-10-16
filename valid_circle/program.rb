puts "Enter the measurement of circumference:"
c = gets.chomp.to_f.round(2)
#p c

puts "Enter the measurement of diameter:"
d = gets.chomp.to_f.round(2)
#p d

if c <= 0 || d <= 0
  puts "\nMeasurements cannot be nil or negative!"
  exit
end

PI = Math::PI.round(2)
#p PI

RATIO = (c/d).round(2)
#p RATIO

if PI == RATIO
  puts "\nIts a valid circle."
  area = (PI * (d/2)**2).round(2)
  puts "Its area is #{area}."
else
  puts "\nIts not a valid circle!"
  puts "Either diameter or circumference measurement is worng."
  puts "Calculating ..."
  sleep(2)

  CIRCUMFERENCE = (2 * PI * (d/2)).round(2)
  puts "\nAssuming the measurement of circumference is wrong and diameter is right, then .."
  puts "Circumference = #{CIRCUMFERENCE}."

  DIAMETER = (c/PI).round(2)
  puts "Assuming the measurement of diameter is wrong and circumference is right, then.."
  puts "Diameter = #{DIAMETER}."
end

