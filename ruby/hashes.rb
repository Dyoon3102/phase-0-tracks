client = {}

puts "Please key in corresponding information."

puts "Client's name:"
name = gets.chomp
client[:name] = name

puts "Client's age:"
age = gets.chomp.to_i
client[:age] = age

puts "Number of children? (0 if none):"
child_num = gets.chomp.to_i
client[:child_num] = child_num

puts "Choice of decor theme:"
decor_theme = gets.chomp
client[:decor_theme] = decor_theme

puts "Likes chandaliers? (y/n)"	
like_chandalier = gets.chomp.downcase
if like_chandalier == "y"
	like_chandalier = true
else
	like_chandalier = false
end
client[:like_chandalier] = like_chandalier

puts "Allergic to lime-green paint? (y/n)"
allergy = gets.chomp.downcase
if allergy == "y"
	allergy = true
else
	allergy = false
end
client[:allergy] = allergy

puts client