puts "What is your name?"
name = gets.chomp
	
if name == "Drake Cula" || name == "Tu Fang"
		name = true
else
		name = false
end
	
puts "How old are you?"
current_age = gets.chomp.to_i
	
puts "What year were you born?"
year_born = gets.chomp.to_i
	
if 
	Time.new.year - year_born == current_age
	age_right = true
else
	age_right = false
end
	
puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
garlic_bread = gets.chomp
	
puts "Would you like to enroll in the company's health insurance? (y/n)"
health_insurance = gets.chomp
	
puts "Please list any allergies that you have one at a time and type done at the end of your list."
allergies = gets.chomp

until allergies == "sunshine" || allergies == "done"
	puts "Keep listing your allergies"
	allergies = gets.chomp
end
	
if
	name == true
	puts "Definitely a vampire!"
		
elsif
	allergies == "sunshine"
	puts "Probably a vampire."
		
elsif
	age_right == true && (garlic_bread == "y" || health_insurance == "y")
	puts "Probably not a vampire."
	
elsif
	age_right == false && (garlic_bread == "y" || health_insurance == "y")
	puts "Probably a vampire."
	
elsif
	age_right == false && garlic_bread == "n" && health_insurance == "n"
	puts "Almost certainly a vampire."
	
else
	puts "Results inconclusive."
end 