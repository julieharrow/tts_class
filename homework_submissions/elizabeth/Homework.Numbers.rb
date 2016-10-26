def add(num1,num2)
  num1+num2
end
def subtract(num1,num2)
  num1-num2
end
def multiply(num1,num2)
  num1*num2
end
def divide(num1,num2)
  num1/num2
end

puts "Let's do some math! Pick a number!:"
num1 = gets.chomp.to_i
puts "Would you like to add, subtract, multiply or divide?"
function = gets.chomp.downcase
puts "And pick another number!"
num2 = gets.chomp.to_i

puts send(function, num1, num2)
