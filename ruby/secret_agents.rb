=begin
	-Ask the user to key in a word
		-Loop through each letter of the word
		-Change each letter to the next letter in the alphabet
=end

=begin
	-Ask the user to key in a word
		-Loop through each letter of the word
		-Change each letter to the previous letter in the alphabet
=end

#puts "Key in a password."
#password = gets.chomp.downcase

def encrypt(password)
	index = 0
	while index < password.length
		print password[index].next
		index += 1
	end
end

encrypt("abc")
puts ""
encrypt("zed")
puts ""

def decrypt(password)
	index = 0
	while index < password.length
		print (password[index].ord-1).chr
		index += 1
	end
end

decrypt("bcd")
puts ""
decrypt("afe")