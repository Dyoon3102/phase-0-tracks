# Initialize an empty hash to start collecting client information.
client = {}

puts "Please key in corresponding information."
puts ""

# Prompt user to input corresponding information.
puts "Client's name:"
name = gets.chomp
# Convert input to value of key
client[:name] = name
puts ""

# Prompt user to input corresponding information.
puts "Client's age:"
age = gets.chomp.to_i
# Convert input to value of key
client[:age] = age
puts ""

# Prompt user to input corresponding information.
puts "Number of children? (0 if none):"
child_num = gets.chomp.to_i
# Convert input to value of key
client[:child_num] = child_num
puts ""

# Prompt user to input corresponding information.
puts "Choice of decor theme:"
decor_theme = gets.chomp
# Convert input to value of key
client[:decor_theme] = decor_theme
puts ""

# Prompt user to input corresponding information.
puts "Likes chandaliers? (y/n)"	
like_chandalier = gets.chomp.downcase
if like_chandalier == "y"
	like_chandalier = true
else
	like_chandalier = false
end
# Convert input to value of key
client[:like_chandalier] = like_chandalier
puts ""

# Prompt user to input corresponding information.
puts "Allergic to lime-green paint? (y/n)"
allergy = gets.chomp.downcase
if allergy == "y"
	allergy = true
else
	allergy = false
end
# Convert input to value of key
client[:allergy] = allergy
puts ""

# Print the hash
puts client
puts ""

# Give the user opportunity to update a key
puts "Please type in the key you would like to change. If none, please type none."
key_change = gets.chomp
puts ""

# Update the value of the key and end program with hash print
if key_change == "none"
else
puts "Enter new value."
new_value = gets.chomp
client[key_change.to_sym] = new_value
end
puts ""
puts client