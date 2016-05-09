=begin
	-Ask the user to key in a word
		-Loop through each letter of the word
		-Change each letter to the next letter in the alphabet
=end

def encrypt(password)
	index = 0
	while index < password.length
		if password[index] == "z"
			password[index] = "a"
		else
			password[index] = password[index].next
		end
		index += 1
	end
	return password
end

#encrypt("abc")
#encrypt("zed")

=begin
	-Ask the user to key in a word
		-Loop through each letter of the word
		-Change each letter to the previous letter in the alphabet
=end

def decrypt(password)
	index = 0
	while index < password.length
		if password[index] == "a"
			password[index] = "z"
		else
			password[index] = (password[index].ord-1).chr
		end
		index += 1
	end
	return password
end

#decrypt("bcd")
#decrypt("afe")

#password = "swordfish"
#puts decrypt(encrypt(password))
#Method within a method works because it processes whatever is in parenthesis first

#Keep asking until a valid answer: encrypt or decrypt
valid = false
until valid
	puts "Would you like to encrypt(e) or decrypt(d) a password?"
	choice = gets.chomp
	if choice == "e" || choice == "d"
		valid = true
	end
end

#Ask the user to input a password
puts "Key in your password."
password = gets.chomp.downcase

#Convert password to the method of choice
if choice == "e"
	puts encrypt(password)
elsif choice == "d"
	puts decrypt(password)
end