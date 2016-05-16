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

puts calculate(5, "+", 4)
puts calculate(32, "-", 13)
puts calculate(3, "*", 6)
puts calculate(33, "/", 11)