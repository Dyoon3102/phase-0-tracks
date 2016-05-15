=begin
 -Ask the user to input full name
 	-Swap place between first name and last name
 	-Convert each letter to the next letter in alphabet
 		-If it is a vowel
 			-Switch to next vowel in turn
 		-If it is a consonant
 			-Switch to next consonant in turn
 	-Print out the encoded name
 -Ask repeatedly to input a name
 -Quit the program upon user's request and display all encoded names
=end

#Create an empty hash for key of encoded name and value of real name
spy = {}

#Create a method to swap place between first name and last name
def name_swap(name)
	name = name.downcase
	nameswap = name.split(" ")
	nameswap = nameswap.reverse!
	name = nameswap.join(" ")
end

#Create a method to switch each vowel to the next vowel in turn and the each consonant to the next consonant in turn
def encode(name)
	name = name_swap(name)
	alpha = 'abcdefghijklmnopqrstuvwxyz'
	alpha_edit = 'ecdfighjoklmnpuqrstvawxyzb'
	name.tr!(alpha, alpha_edit)
	name = name.split.map(&:capitalize).join(" ")
	p name
end

#Create a loop to repeatedly ask for user input of full name and include it in hash until user request to terminate program
loop do
	puts "Please type in your full name or type 'quit' to quit:"
	name = gets.chomp
	if name == "quit"
		break
	else
		fake_name = encode(name)
		spy[fake_name] = name
	end
end

#Display all encoded name from user input with attached message
spy.each { |x, y| p y + " is also known as " + x }	