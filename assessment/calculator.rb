equate = {}
def calculate(num1, operator, num2)
	if operator == "+"
		num1 + num2
	elsif operator == "-"
		num1 - num2
	elsif operator == "*"
		num1 * num2
	elsif operator == "/"
		num1 / num2
	end
end

#puts calculate(5, "+", 4)
#puts calculate(32, "-", 13)
#puts calculate(3, "*", 6)
#puts calculate(33, "/", 11)

loop do
	puts "Enter your equation (e.g. 4 + 5) or type 'done' when finished:"
	equation = gets.chomp
	if equation == 'done'
		break
	#elsif !equation.is_a?(Integer) || !equation.include?("+", "-", "*", "/", " ")
		#puts "Please make a valid input."
	else
		equation.delete!(" ")
		num1 = equation[0].to_i
		operator = equation[1].to_s
		num2 = equation[2].to_i
		math = calculate(num1, operator, num2)
		equate[math] = equation
	end
	puts calculate(num1, operator, num2)
end

index = equate.length
puts "#{index} calculations perfomed:"
equate.each { |x, y| puts "#{y} = #{x}" }