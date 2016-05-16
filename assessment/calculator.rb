def calculate(x, op, y)
	if op == "+"
		x + y
	elsif op == "-"
		x - y
	elsif op == "*"
		x * y
	elsif op == "/"
		x / y
	end
end

#puts calculate(5, "+", 4)
#puts calculate(32, "-", 13)
#puts calculate(3, "*", 6)
#puts calculate(33, "/", 11)

puts "Enter a number:"
num1 = gets.chomp.to_i

puts "Enter an operator (+, -, *, /):"
operator = gets.chomp.to_s

puts "Enter another number:"
num2 = gets.chomp.to_i

puts calculate(num1, operator, num2)