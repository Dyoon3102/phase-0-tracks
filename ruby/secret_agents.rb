=begin
	-Ask the user to key in a word
		-Loop through each letter of the word
		-Change each letter to the next letter in the alphabet
=end

def encrypt(password)
	index = 0
	while index < password.length
		if password[index] == "z"
			password[index] = "`"
		else
			print password[index].next
			index += 1
		end
	end
end

encrypt("abc")
puts ""
encrypt("zed")
puts ""

=begin
	-Ask the user to key in a word
		-Loop through each letter of the word
		-Change each letter to the previous letter in the alphabet
=end

def decrypt(password)
	index = 0
	while index < password.length
		if password[index] == "a"
			password[index] = "{"
		else
			print (password[index].ord-1).chr
			index += 1
		end
	end
end

decrypt("bcd")
puts ""
decrypt("afe")
puts ""

# Ask the for choice of encrypt or decrypt
puts "Would you like to encrypt(e) or decrypt(d) a password?"
choice = gets.chomp

# Ask the user to input a password
puts "Key in your password."
password = gets.chomp.downcase

# Convert password to the method of choice
if choice == "e"
	puts encrypt(password)
elsif choice == "d"
	puts decrypt(password)
end

puts "Have a nice day!"